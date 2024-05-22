import { Component } from '@angular/core';


@Component({
  selector: 'app-qrcode',
  standalone: true,
  imports: [],
  templateUrl: './qrcode.component.html',
  styleUrl: './qrcode.component.css'
})
export class QrcodeComponent {
  datosDelAprendiz: string = 'Nombre: Juan Pérez, Documento: 12345678';
}
