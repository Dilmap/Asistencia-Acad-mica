import { Component } from '@angular/core';
import { QrCodeModule } from 'ng-qrcode';

@Component({
  selector: 'app-qrcode',
  standalone: true,
  imports: [QrCodeModule],
  templateUrl: './qrcode.component.html',
  styleUrl: './qrcode.component.css'
})
export class QrcodeComponent {
  datosDelAprendiz: string = 'Nombre: Juan Pérez, Documento: 12345678';
}
