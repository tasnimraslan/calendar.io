package uy.com.calendario.model.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.*;

@Entity
@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Label {
    private @Id Long userId;
    private @Id Long name;
    private String color;
}
