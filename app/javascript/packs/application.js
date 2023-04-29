import Chart from 'chart.js/auto';

document.addEventListener('DOMContentLoaded', () => {
  const foundationDataElement = document.getElementById('foundation-data');
  const foundationData = JSON.parse(foundationDataElement.dataset.foundationData);

  const ctx = document.getElementById('foundation-chart').getContext('2d');
  const chart = new Chart(ctx, {
    type: 'bar',
    data: {
      labels: Object.keys(foundationData),
      datasets: [
        {
          label: 'Foundations by Category',
          data: Object.values(foundationData),
          backgroundColor: 'rgba(75, 192, 192, 0.2)',
          borderColor: 'rgba(75, 192, 192, 1)',
          borderWidth: 1,
        },
      ],
    },
    options: {
      scales: {
        y: {
          beginAtZero: true,
        },
      },
    },
  });
});
