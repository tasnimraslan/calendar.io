package uy.com.calendario.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.*;

import java.sql.Timestamp;

@Entity
@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Event {
    private @Id Long userId;
    private @Id String name;
    private String description;
    private Timestamp startDate;
    private Timestamp endDate;
    private int period;


}
