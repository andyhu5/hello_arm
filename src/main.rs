use std::error::Error;

#[tokio::main]
async fn main() -> Result<(), Box<dyn Error>> {
    // Build the client with default settings
    let client = reqwest::Client::new();
    
    // Send a GET request to baidu.com
    let response = client.get("https://www.baidu.com")
        .send()
        .await?;
    
    // Get the status code
    let status = response.status();
    
    println!("Response status code: {}", status);
    println!("Response status code (as u16): {}", status.as_u16());
    
    // Print response body as text
    let body = response.text().await?;
    println!("Response body length: {} characters", body.len());
    // println!("First 100 characters of body: {}", &body[..100.min(body.len())]);
    
    Ok(())
}