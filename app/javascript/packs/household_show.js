let newExpenseSave = document.getElementById('newExpenseSave')
newExpenseSave.onclick = function () {
    $('#newExpenseSaveLoader').hidden = false
    $('#newExpenseSave').disabled = true

    $.ajax({
        url: '/new_expense_modal/',
        method: 'GET',
        dataType: 'json',
        data: { "amount": $('#amount_field').val(), "mainPayer": $('#inputGroupSelect01').val(), "date": $('#expense_day').val(), "name": $('#name').val() },
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