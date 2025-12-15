import { useEffect, useState } from "react";

function App() {
  const [status, setStatus] = useState("loading...");

  useEffect(() => {
    fetch("/api/users")
      .then(res => res.json())
      .then(data => setStatus(data.status))
      .catch(() => setStatus("error"));
  }, []);

  return (
    <div style={{ padding: 40 }}>
      <h1>React FE</h1>
      <p>BE status: {status}</p>
    </div>
  );
}

export default App;
