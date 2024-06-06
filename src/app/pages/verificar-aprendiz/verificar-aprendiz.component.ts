import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { AppService } from '../../shared/codigo_qr/qr.service';
import { CommonModule } from '@angular/common';


@Component({
  selector: 'app-verificar-aprendiz',
  standalone: true,
  imports: [FormsModule,CommonModule],
  templateUrl: './verificar-aprendiz.component.html',
  styleUrl: './verificar-aprendiz.component.css'
})
export class VerificarAprendizComponent {
  selectedAprendiz!: number;

  onSelectionChange(event: Event): void {
    const selectElement = event.target as HTMLSelectElement;
    this.selectedAprendiz = Number(selectElement.value);
    console.log('Opción seleccionada:', this.selectedAprendiz);
  }

  documentNumber!: number;
  verificationResult: any;
  verificationMessage!: string;

  constructor(private appService: AppService) {}

  onVerify(): void {
    this.appService.verifyDocument(this.selectedAprendiz, this.documentNumber).subscribe(
      (data) => {
        if (data.message) {
          this.verificationMessage = 'Datos no encontrados';
          this.verificationResult = null;
        } else {
          this.verificationResult = data;
          this.verificationMessage = 'Sus datos han sido verificados correctamente';
        }
      },
      (error) => {
        this.verificationResult = null;
        this.verificationMessage = 'Error al verificar los datos';
      }
    );
  }
}
