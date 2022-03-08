
/*crear tabla de categorias*/
CREATE TABLE `platziblog` . `categories` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `nombre_categoria` VARCHAR(30) NOT NULL,
    PRIMARY KEY (`id`));

/*crear tabla de etiqueta*/
CREATE TABLE `platziblog` . `tags` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `nombre_etiqueta` VARCHAR(30) NOT NULL, 
    PRIMARY KEY (`id`));
    
    
/*crear tabla de usuarios*/
CREATE TABLE `platziblog` . `users` (
	`id` INT NOT NULL AUTO_INCREMENT,
    `login` VARCHAR(30) NOT NULL,
    `password` VARCHAR(32) NOT NULL,
    `nickname` VARCHAR(40) NOT NULL, 
    `email` VARCHAR(40) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `email_UNIQUE` (`email` ASC));
    
    comentarios
    