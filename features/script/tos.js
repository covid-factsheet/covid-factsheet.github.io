$(document).ready(function () {
    //if cookie hasn't been set...
    if (document.cookie.indexOf("ModalShown=true")<0) {
        $('#tosModal').modal({
            backdrop: 'static',
            keyboard: false
        })
    
        $("#tosModal").modal("show");
        //Modal has been shown, now set a cookie so it never comes back
        $("#tosModalClose").click(function () {
            $("#tosModal").modal("hide");
            document.cookie = "ModalShown=true; expires=Fri, 31 Dec 9999 23:59:59 GMT; path=/";
        });
    }
});