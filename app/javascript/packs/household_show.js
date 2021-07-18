
let newExpenseSave = document.getElementById('newExpenseSave')
newExpenseSave.onclick = function () {
    console.log("ddd")
    console.log($('#h_id').html())
    let loader = document.getElementById('newExpenseSaveLoader')
    loader.hidden = false
    newExpenseSave.disabled = true

    $.ajax({
        url: '/new_expense_modal/1',
        method: 'GET',
        dataType: 'json',
        data: { "amount": $('#amount_field').val(), "mainPayer": $('#inputGroupSelect01').val(), "id": $('#h_id').html() },
        success: function (data){
            console.log(data)
            console.log(data["status"]);
            $('#modalClose').click();
        },
        error: function () {
            console.log("FAILURE");
        },
        async: true
    });
}