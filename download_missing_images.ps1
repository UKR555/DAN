<<<<<<< HEAD
# PowerShell script to download missing images

# Create images directory if it doesn't exist
if (-not (Test-Path -Path "images")) {
    New-Item -ItemType Directory -Path "images"
}

# Define image URLs and their local filenames for the missing images
$imageData = @(
    @{
        URL = "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?q=80&w=800&auto=format&fit=crop";
        Filename = "butter.jpg";
        Description = "Butter product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1550617931-e17a7b70dce2?q=80&w=800&auto=format&fit=crop";
        Filename = "rice.jpg";
        Description = "Rice product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1509440159596-0249088772ff?q=80&w=800&auto=format&fit=crop";
        Filename = "atta.jpg";
        Description = "Wheat flour product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1607349913338-fca6f7fc42d0?q=80&w=800&auto=format&fit=crop";
        Filename = "about.jpg";
        Description = "About us image"
    },
    @{
        URL = "https://images.unsplash.com/photo-1542838132-92c53300491e?q=80&w=800&auto=format&fit=crop";
        Filename = "hero.jpg";
        Description = "Hero background image"
    }
)

# Download each image
foreach ($image in $imageData) {
    $outputPath = "images/$($image.Filename)"
    Write-Host "Downloading $($image.Description) to $outputPath..."
    
    try {
        Invoke-WebRequest -Uri $image.URL -OutFile $outputPath
        Write-Host "Downloaded successfully!" -ForegroundColor Green
    } catch {
        Write-Host "Failed to download $($image.Filename): $_" -ForegroundColor Red
    }
}

Write-Host "All missing images have been downloaded to the 'images' folder." -ForegroundColor Cyan 
=======
# PowerShell script to download missing images

# Create images directory if it doesn't exist
if (-not (Test-Path -Path "images")) {
    New-Item -ItemType Directory -Path "images"
}

# Define image URLs and their local filenames for the missing images
$imageData = @(
    @{
        URL = "https://images.unsplash.com/photo-1615485290382-441e4d049cb5?q=80&w=800&auto=format&fit=crop";
        Filename = "butter.jpg";
        Description = "Butter product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1550617931-e17a7b70dce2?q=80&w=800&auto=format&fit=crop";
        Filename = "rice.jpg";
        Description = "Rice product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1509440159596-0249088772ff?q=80&w=800&auto=format&fit=crop";
        Filename = "atta.jpg";
        Description = "Wheat flour product"
    },
    @{
        URL = "https://images.unsplash.com/photo-1607349913338-fca6f7fc42d0?q=80&w=800&auto=format&fit=crop";
        Filename = "about.jpg";
        Description = "About us image"
    },
    @{
        URL = "https://images.unsplash.com/photo-1542838132-92c53300491e?q=80&w=800&auto=format&fit=crop";
        Filename = "hero.jpg";
        Description = "Hero background image"
    }
)

# Download each image
foreach ($image in $imageData) {
    $outputPath = "images/$($image.Filename)"
    Write-Host "Downloading $($image.Description) to $outputPath..."
    
    try {
        Invoke-WebRequest -Uri $image.URL -OutFile $outputPath
        Write-Host "Downloaded successfully!" -ForegroundColor Green
    } catch {
        Write-Host "Failed to download $($image.Filename): $_" -ForegroundColor Red
    }
}

Write-Host "All missing images have been downloaded to the 'images' folder." -ForegroundColor Cyan 
>>>>>>> edb9b46 (Fix #3: Razorpay payment getway added)
 