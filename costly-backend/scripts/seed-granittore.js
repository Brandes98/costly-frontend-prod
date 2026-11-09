import bcrypt from 'bcryptjs'
import prisma from '../src/config/database.js'

const empresa = await prisma.empresa.create({
  data: {
    nombre: 'Granittore',
    ruc: '3-101-094355',
    email: 'info@granittore.com',
    telefono: '+506-2257-2828',
    direccion: 'Curridabat, Costa Rica',
    moneda_base: 'USD',
    iva_pct: 13,
    ivi_pct: 13,
    margen_default: 35,
    tc_fuente: 'bccr',
  },
})

await prisma.usuario.create({
  data: {
    empresa_id: empresa.empresa_id,
    nombre: 'Admin Granittore',
    email: 'admin@granittore.com',   // tiene que ser distinto a cualquier email existente
    password_hash: await bcrypt.hash('Granittore123!', 12),
    rol: 'admin',
    activo: true,
  },
})

console.log('Empresa creada:', empresa.empresa_id)
process.exit(0)