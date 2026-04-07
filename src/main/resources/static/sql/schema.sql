CREATE TABLE IF NOT EXISTS TYPE_ACTIVITY (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
COMMENT ON TABLE TYPE_ACTIVITY IS 'Tipos de actividad.';
COMMENT ON COLUMN TYPE_ACTIVITY.id IS 'Clave primaria de tipo de actividad.';
COMMENT ON COLUMN TYPE_ACTIVITY.name IS 'Nombre del tipo de actividad, p.ej. carrera, caminata, intervalos.';

CREATE TABLE IF NOT EXISTS ACTIVITY (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type_activity INT NOT NULL,
    distance INT,
    total_duration BIGINT,
    average_speed INT,
    pace_seconds_per_km INT,
    max_bpm INT,
    average_bpm INT,
    paces_per_km CLOB,
    feelings VARCHAR(255),
    CONSTRAINT fk_activity_type_activity FOREIGN KEY (type_activity)
        REFERENCES TYPE_ACTIVITY(id)
);
COMMENT ON TABLE ACTIVITY IS 'Registro de actividades reales realizadas por el usuario.';
COMMENT ON COLUMN ACTIVITY.id IS 'Clave primaria de la actividad.';
COMMENT ON COLUMN ACTIVITY.type_activity IS 'FK de tipo de actividad.';
COMMENT ON COLUMN ACTIVITY.distance IS 'Distancia total de la actividad en metros.';
COMMENT ON COLUMN ACTIVITY.total_duration IS 'Duración total de la actividad en segundos.';
COMMENT ON COLUMN ACTIVITY.average_speed IS 'Velocidad media de la actividad.';
COMMENT ON COLUMN ACTIVITY.pace_seconds_per_km IS 'Ritmo medio por kilómetro en segundos.';
COMMENT ON COLUMN ACTIVITY.max_bpm IS 'Pulso máximo alcanzado durante la actividad.';
COMMENT ON COLUMN ACTIVITY.average_bpm IS 'Pulso medio durante la actividad.';
COMMENT ON COLUMN ACTIVITY.paces_per_km IS 'Array JSON de ritmos por kilómetro, p.ej. [300,290,310].';
COMMENT ON COLUMN ACTIVITY.feelings IS 'Sensaciones y estado subjetivo de la actividad.';

CREATE TABLE IF NOT EXISTS RECOMMENDATION_ACTIVITY (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type_activity INT NOT NULL,
    distance INT,
    pace_seconds_per_km INT,
    max_bpm INT,
    average_bpm INT,
    paces_per_km CLOB,
    CONSTRAINT fk_recommendation_type_activity FOREIGN KEY (type_activity)
        REFERENCES TYPE_ACTIVITY(id)
);
COMMENT ON TABLE RECOMMENDATION_ACTIVITY IS 'Plantillas o recomendaciones de actividad asociadas a un tipo.';
COMMENT ON COLUMN RECOMMENDATION_ACTIVITY.id IS 'Clave primaria de la recomendación.';
COMMENT ON COLUMN RECOMMENDATION_ACTIVITY.type_activity IS 'FK de tipo de actividad para la recomendación.';
COMMENT ON COLUMN RECOMMENDATION_ACTIVITY.distance IS 'Distancia recomendada en metros.';
COMMENT ON COLUMN RECOMMENDATION_ACTIVITY.pace_seconds_per_km IS 'Ritmo recomendado por kilómetro en segundos.';
COMMENT ON COLUMN RECOMMENDATION_ACTIVITY.max_bpm IS 'Pulso máximo recomendado.';
COMMENT ON COLUMN RECOMMENDATION_ACTIVITY.average_bpm IS 'Pulso medio recomendado.';
COMMENT ON COLUMN RECOMMENDATION_ACTIVITY.paces_per_km IS 'Array JSON de ritmos por kilómetro recomendados.';


COMMIT;