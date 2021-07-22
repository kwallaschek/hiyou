import AutoNumeric from 'autonumeric';
let newExpenseSave = document.getElementById('newExpenseSave')
newExpenseSave.onclick = function () {
    $('#newExpenseSaveLoader').hidden = false
    $('#newExpenseSave').disabled = true

    $.ajax({
        url: '/new_expense_modal/',
        method: 'GET',
        dataType: 'json',
        data: { "amount": AutoNumeric.getNumber('#amount_field'),
                "mainPayer": $('#payerSelect').val(),
                "date": $('#expense_day').val(),
                "name": $('#name').val(),
                "category": $('#categorySelect').val()
        },
        success: function (data){
            if (data["status"] === 200){
                $('#modalClose').click();
                resetModalInput();
            } else {
                // TODO Error handling
            }

        },
        error: function () {
            console.log("FAILURE");
        },
        async: true
    });
}
function resetModalInput(){
    $('#amount_field').val("")
    $('#newExpenseSaveLoader').hidden = true
}


new AutoNumeric('#amount_field').japanese();