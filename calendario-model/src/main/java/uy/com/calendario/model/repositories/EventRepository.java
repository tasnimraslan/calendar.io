package uy.com.calendario.model.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import uy.com.calendario.model.entities.Event;

public interface EventRepository extends JpaRepository<Event, String> {
}
