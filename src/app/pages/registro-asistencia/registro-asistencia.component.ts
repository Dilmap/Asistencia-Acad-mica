import { FichaService } from './../../shared/Ficha_crud/ficha.service';
import { CommonModule } from '@angular/common';
import { ActualizarInstructorComponent } from '../actualizar-instructor/actualizar-instructor.component';
import { Component, OnInit,Input,viewChild,Output,EventEmitter } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Observable } from 'rxjs';
import { CompetenciaService } from '../../shared/competencia_crud/competencia.service';
import { GuardarAsistenciaComponent } from '../guardar-asistencia/guardar-asistencia.component';
import { CompetenciaModel } from '../../shared/competencia_crud/competencias.model';
import { FichaModel } from '../../shared/Ficha_crud/ficha.model';
import { MatSelectModule } from '@angular/material/select';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';

@Component({
  selector: 'app-registro-asistencia',
  standalone: true,
  imports: [CommonModule,ActualizarInstructorComponent, FormsModule, GuardarAsistenciaComponent,MatSelectModule,MatFormFieldModule,MatInputModule],
  templateUrl: './registro-asistencia.component.html',
  styleUrl: './registro-asistencia.component.css'
})

export class RegistroAsistenciaComponent implements OnInit{
  isDivVisible: boolean = false;


  @Input() competencias2: Observable<{ nombre: string }[]> = new Observable();
  @Input() placeholder: string = 'Select an option';
  @Output() selectionChange = new EventEmitter<{ nombre: string }>();

  isDropdownOpen = false;
  selectedOption: { nombre: string } | null = null;

  toggleDropdown() {
    this.isDropdownOpen = !this.isDropdownOpen;
  }

  selectOption(option: { nombre: string }) {
    this.selectedOption = option;
    this.selectionChange.emit(option);
    this.isDropdownOpen = false; // Close the dropdown after selection
  }

  competencias: Observable<CompetenciaModel[]> | undefined;
  fichaProgramas: Observable<FichaModel[]> | undefined;
  selectedCompetencia: CompetenciaModel | null = null;
  constructor(
    private competenciaService: CompetenciaService,
    private fichaService: FichaService,
  ){}

  ngOnInit(){
    this.competencias = this.competenciaService.obtenerCompetencias();
    this.fichaProgramas = this.fichaService.obtenerFichaPrograma()
  }

  toggleDiv() {
   this.isDivVisible = !this.isDivVisible;
  }

}
