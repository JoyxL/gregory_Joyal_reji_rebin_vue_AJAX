
console.log("Vue app is loaded");

new Vue({
    el: '#app',
  data: {
    games: [],
      selectedGame: null,
   loading: true,
      error: null
    },
    created() {
      axios.get('http://localhost:8000/api/games')
     .then(response => {
      this.games = response.data;
          this.loading = false;
        })
        .catch((error) => {
         console.error("Error loading games:", error);
      this.error = "Oops! Something went wrong while loading games.";
          this.loading = false;
    });
    },
    methods: {
      fetchDetails(id) {
        this.selectedGame = null;
        this.loading = true;
      axios.get(`http://localhost:8000/api/games/${id}`)
       .then(response => {
        this.selectedGame = response.data;
            this.loading = false;
            this.$nextTick(() => {
           gsap.from("#details", { opacity: 0, y: 20, duration: 1.5 });
            });
          })
          .catch((error) => {
            console.error("Error loading game details:", error);
            this.error = "Unable to load game details right now.";
            this.loading = false;
          });
      }
    }
  });
  