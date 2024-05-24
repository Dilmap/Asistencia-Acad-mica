import { ComponentFixture, TestBed } from '@angular/core/testing';

import { GuardarAsistenciaComponent } from './guardar-asistencia.component';

describe('GuardarAsistenciaComponent', () => {
  let component: GuardarAsistenciaComponent;
  let fixture: ComponentFixture<GuardarAsistenciaComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [GuardarAsistenciaComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(GuardarAsistenciaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
