(function () {
    'use strict';
    window.addEventListener('load', function () {
        // Get the forms we want to add validation styles to
        var forms = document.getElementsByClassName('needs-validation');
        // Loop over them and prevent submission
        var validation = Array.prototype.filter.call(forms, function (form) {
            form.addEventListener('submit', function (event) {
                if (form.checkValidity() === false) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                form.classList.add('was-validated');
            }, false);
        });
    }, false);
})();

datosModal1 = function (idtemaInv, temaInv){
    $('#idtemaInv').val(idtemaInv);
    $('#temaInv').val(temaInv);
    $('#op').val(1);
};

datosModal2 = function (tema, docente, cargo){
    $('#tema').val(tema);
    $('#temaOri').val(tema);
    $('#docente').val(docente);
    $('#docenteOri').val(docente);
    $('#cargo').val(cargo);
    $('#op').val(2);
};