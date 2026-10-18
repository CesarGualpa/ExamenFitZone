package com.krakdev.fitzone.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.krakdev.fitzone.entidades.Socio;
import com.krakdev.fitzone.repository.SocioRepository;

@Service
public class ServicioSocio {

	private final SocioRepository socioRepository;

	public ServicioSocio(SocioRepository socioRepository) {
		this.socioRepository = socioRepository;
	}

	public Socio crear(Socio s) {

		if (s.getEdad() < 14) {
			throw new IllegalArgumentException(
					"La edad mínima permitida es 14 años.");
		}

		return socioRepository.save(s);
	}

	public List<Socio> listar() {
		return socioRepository.findAll();
	}

	public List<Socio> buscarPorEstado(boolean activo) {
		return socioRepository.findByActivo(activo);
	}

}