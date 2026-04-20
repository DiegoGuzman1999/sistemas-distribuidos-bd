FROM liquibase/liquibase:4.27

# Copiamos los scripts de migracion
COPY changelog/ /liquibase/changelog/
COPY changelog/changelog-master.xml /liquibase/changelog-master.xml
