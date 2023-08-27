const formReserva = document.querySelector('#formNuevaReserva');
const reservaId = formReserva.getAttribute('data-id');

const nombre = document.querySelector('#nombre');
const apellido = document.querySelector('#apellido');
const origen = document.querySelector('#origen');
const destino = document.querySelector('#destino');
const fecha_vuelo = document.querySelector('#fecha_vuelo');
const asiento_numero = document.querySelector('#asiento_numero');
const telefono = document.querySelector('#telefono');
const email = document.querySelector('#email');

document.addEventListener('DOMContentLoaded', async () => {
    // Traemos la reserva que se va a editar
    const response = await fetch(`http://localhost:4000/api/${reservaId}`
    );

console.log(reservaId)
    const data = await response.json();

    console.log(data);

// Mostrar en el formulario los datos de la reserva que se quiere actualizar
    nombre.value = data.nombre;
    apellido.value = data.apellido;
    origen.value = data.origen;
    destino.value = data.destino;
    fecha_vuelo.value = data.fecha_vuelo;
    asiento_numero.value = data.asiento_numero;
    telefono.value = data.telefono;
    email.value = data.email;
});


formReserva.addEventListener('submit', async (e) => {
    e.preventDefault();

    reservaActualizada = {
        nombre: nombre.value,
        apellido: apellido.value,
        origen: origen.value,
        destino: destino.value,
        fecha_vuelo: fecha_vuelo.value,
        asiento_numero: asiento_numero.value,
        telefono: telefono.value,
        email: email.value,
    }


    // Se envían los nuevos datos al servidor express
    const response = await fetch(`http://localhost:4000/api/${reservaId}`, {
        method: 'PUT',
        body: JSON.stringify(reservaActualizada),
        headers: {
            'Content-Type': 'application/json'
        }
    })

    const respToJson = await response.json();

    if (response.status !== 200) {
        return Swal.fire({
            title: 'Error',
            text: respToJson.message,
            icon: 'error',
            confirmButtonText: 'Aceptar'
        });
    }

    // Mostrar mensajes al usuario
    Swal.fire({
        title: 'Reserva actualizada',
        text: respToJson.message,
        icon: 'success',
        confirmButtonText: 'Aceptar'
    })

    setTimeout(() => {
        // Redireccionar al usuario
        window.location.href = "/"
    }, 2000);




})