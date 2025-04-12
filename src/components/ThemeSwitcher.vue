<template>
  <button 
    @click="toggleTheme"
    class="fixed top-4 right-4 p-2 rounded-full bg-white/20 hover:bg-white/30 dark:bg-gray-800/50 dark:hover:bg-gray-700/50 transition-colors duration-300"
  >
    <span v-if="isDark">🌞</span>
    <span v-else>🌙</span>
  </button>
</template>

<script>
export default {
  data() {
    return {
      isDark: localStorage.getItem('theme') === 'dark'
    }
  },
  mounted() {
    this.applyTheme()
  },
  methods: {
    toggleTheme() {
      this.isDark = !this.isDark
      this.applyTheme()
      localStorage.setItem('theme', this.isDark ? 'dark' : 'light')
    },
    applyTheme() {
      document.documentElement.classList.toggle('dark', this.isDark)
    }
  }
}
</script>
