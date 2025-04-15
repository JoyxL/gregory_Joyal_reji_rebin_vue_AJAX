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
        })
        .catch((error) => {
          console.error("Error loading game details:", error);
          this.error = "Oops! Could not load game details.";
          this.loading = false;
        });
    },
    getGenreName(id) {
      const genres = {
        1: "Action",
        2: "Adventure",
        3: "RPG",
        4: "Fighting",
        5: "Racing",
        6: "Puzzle",
        7: "Sports",
        8: "Shooter",
        9: "Platformer"
      };
      return genres[id] || "Unknown";
    }
  }
});
