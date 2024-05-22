import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-verificar-aprendiz',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './verificar-aprendiz.component.html',
  styleUrl: './verificar-aprendiz.component.css'
})
export class VerificarAprendizComponent {
  selectedAprendiz: number | undefined;

  onSelectionChange(event: Event): void {
    const selectElement = event.target as HTMLSelectElement;
    this.selectedAprendiz = Number(selectElement.value);
    console.log('Opción seleccionada:', this.selectedAprendiz);
  }

  
}
