$(function() {

    //page cache
    var $orders = $('#orders');
    var $name = $('#name');
    var $drink = $('#drink');

    var orderTemplate = $('#order-template').html();
    
    //grab and print orders from server.
    function addOrder(order) {
        //mustache.render takes 2 arguments: the template(above) and the ajax object 
        //- either 'order' from the POST form or all of the 'order' objects within the 
        //'orders' array from the GET request
        $orders.append(Mustache.render(orderTemplate, order));
    };
    $.ajax({
        //this grabs the code from the api and returns it in the orders array in the 
        //success function below
        type: 'GET',
        url: 'http://rest.learncode.academy/api/learncode/friends',
        success: function(orders) {
            //this turns each item ('order') in the orders array into html and appends 
            //it to the '#orders ul'
            $.each(orders, function(i, order) {
                addOrder(order);
            });
        },
        error: function() {
            alert('error loading orders');
        } 
    });

    //Coffee Order Form - submit button
    $('#add-order').on('click', function() {
        //when add btn clicked build this object (order) from fields and post to api
        var order = {
            name: $name.val(),
            drink: $drink.val(),
        };

        $.ajax({
            type: 'POST',
            url:'http://rest.learncode.academy/api/learncode/friends',
            //this is where our order object is passed in
            data: order,
            //this does the same as the above success fumction but instead of sorting 
            //through an array full of objects 'newOrder' only contains the 1 object 
            //we just created. so 1 item is appended.
            success: function(newOrder) {
                addOrder(newOrder);
            },
            error: function() {
                alert('error saving order');
            },
        });
    });

    //delete button
    $orders.delegate('.remove', 'click', function() {
        //we have to cache the 'li' otherwise we can't use 'this'?
        var $li = $(this).closest('li');
        $.ajax({
            type: 'DELETE',
            url: 'http://rest.learncode.academy/api/learncode/friends/' + $(this).attr('data-id'),
            success: function () {
                $li.fadeOut(300, function() {
                    $(this).remove();
                });     
            },
        });
    });

    //edit button
    $orders.delegate('.editOrder', 'click', function() {
        var $li = $(this).closest('li'); 
        $li.find('input.name').val( $li.find('span.name').html() );
        $li.find('input.drink').val( $li.find('span.drink').html() );
        $li.addClass('edit');
    });

    //cancel button
    $orders.delegate('.cancelEdit', 'click', function() {
        $(this).closest('li').removeClass('edit'); 
    });

    //save button
    $orders.delegate('.saveEdit', 'click', function() {
        var $li = $(this).closest('li');
        var order = {
            name: $li.find('input.name').val(),
            drink: $li.find('input.drink').val()
        };

        $.ajax({
            type: 'PUT',
            url: 'http://rest.learncode.academy/api/learncode/friends/' + $li.attr('data-id'),
            data: order,
            success: function(newOrder) {
                $li.find('span.name').html(order.name);
                $li.find('span.drink').html(order.drink);
                $li.removeClass('edit');
            },
            error: function() {
               alert('error updating order');
            },
        });
    });
});
