/*
  Warnings:

  - A unique constraint covering the columns `[empresa_id,cedula]` on the table `cliente` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[empresa_id,codigo]` on the table `importacion` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[empresa_id,codigo]` on the table `pedido` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[empresa_id,sku]` on the table `producto` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[empresa_id,fecha]` on the table `tc_historico` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "cliente_cedula_key";

-- DropIndex
DROP INDEX "importacion_codigo_key";

-- DropIndex
DROP INDEX "pedido_codigo_key";

-- DropIndex
DROP INDEX "producto_sku_key";

-- DropIndex
DROP INDEX "tc_historico_fecha_key";

-- CreateIndex
CREATE UNIQUE INDEX "cliente_empresa_id_cedula_key" ON "cliente"("empresa_id", "cedula");

-- CreateIndex
CREATE UNIQUE INDEX "importacion_empresa_id_codigo_key" ON "importacion"("empresa_id", "codigo");

-- CreateIndex
CREATE UNIQUE INDEX "pedido_empresa_id_codigo_key" ON "pedido"("empresa_id", "codigo");

-- CreateIndex
CREATE UNIQUE INDEX "producto_empresa_id_sku_key" ON "producto"("empresa_id", "sku");

-- CreateIndex
CREATE UNIQUE INDEX "tc_historico_empresa_id_fecha_key" ON "tc_historico"("empresa_id", "fecha");
