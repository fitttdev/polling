import './App.css'

function App() {
  const createPolling = async () => {
    try {
      const response = await fetch('http://localhost:3000/api/v1/pollings', {
        method: 'POST',
      });
      if (response.ok) {
        console.log('Polling created successfully');
      } else {
        console.error('Error creating polling:', response.statusText);
      }
    } catch (error) {
      console.error('Error creating polling:', error);
    }
  };

  return (
    <div>
      <button onClick={createPolling}>Create Polling</button>
    </div>
  )
}

export default App
