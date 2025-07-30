// Configuración de la aplicación
const CONFIG = {
    // URL base de la API - cambiar según el entorno
    API_BASE_URL: process.env.NODE_ENV === 'production' 
        ? 'https://tu-backend-railway.up.railway.app/api'  // Cambia esta URL por tu backend en Railway
        : 'http://localhost:7000/api',
    
    // Otras configuraciones
    APP_NAME: 'EquipLink',
    VERSION: '1.0.0',
    
    // Configuración de paginación
    ITEMS_PER_PAGE: 10,
    
    // Timeouts
    REQUEST_TIMEOUT: 10000, // 10 segundos
};

// Exportar para uso en otros archivos
if (typeof module !== 'undefined' && module.exports) {
    module.exports = CONFIG;
} else {
    window.CONFIG = CONFIG;
} 