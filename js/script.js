const formulario = document.querySelector("form")

formulario.addEventListener("submit", (evento) => {
    evento.preventDefault()
    const datos = new FormData(formulario)
    fetch("guardar.php",{
        method: "POST",
        body: datos
    })
}).then(
    cabecera => {
        console.log("ver que tiene: ",cabecera);
        return cabecera.json() 
    }
).then
    datos => {
        console.log(datos);
    }
        if (datos.respuesta == "okey") {
            confetti();    
        }else 
        {
            Swal.fire({
            title: "Noo mi compaa!!",
            text: "Mi lidel, usted no gualdo na!!",
            imageUrl: "https://www.webconsultas.com/sites/default/files/styles/wc_adaptive_image__small/public/temas/adopotar-mascota-por-internet.jpg",
            imageWidth: 400,
            imageHeight: 200,
            imageAlt: "cuachiloco"
                  });
}

