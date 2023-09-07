package uy.com.calendario.model.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import uy.com.calendario.model.entities.Label;

public interface LabelRepository extends JpaRepository<Label, String> {
}
