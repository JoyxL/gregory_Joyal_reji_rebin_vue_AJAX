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

        this.$nextTick(() => {
          // Create a timeline for better performance
          const tl = gsap.timeline();

          // Add will-change property for better performance
          document.querySelectorAll('.game').forEach(el => {
            el.style.willChange = 'transform, opacity';
          });

          // Bounce animation for game cards
          tl.from(".game", {
            duration: 0.9,
            y: -10,
            opacity: 0,
            ease: "bounce.out",
            stagger: 0.15,
            force3D: true,
            onComplete: () => {
              document.querySelectorAll('.game').forEach(el => {
                el.style.willChange = 'auto';
              });
            }
          });
        });
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
            const details = document.querySelector('#details');
            if (details) {
              details.style.willChange = 'transform, opacity';

              // Slide-up animation for details
              gsap.from("#details", {
                duration: 0.5,
                y: 50,
                opacity: 0,
                ease: "power2.out",
                force3D: true,
                onComplete: () => {
                  details.style.willChange = 'auto';
                }
              });
            }
          });
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
