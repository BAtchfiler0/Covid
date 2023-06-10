Add-Type -AssemblyName PresentationFramework, PresentationCore, WindowsBase                                          
# 폼 생성                                                                                                               
$form = New-Object System.Windows.Forms.Form                                                                         
$form.WindowState = 'Maximized'                                                                                      
$form.FormBorderStyle = 'None'                                                                                       
# 폼 배경색을 투명색으로 변경                                                                                                    
$form.BackColor = 'Transparent'                                                                                      
# 폼 배경을 투명하게 만듦                                                                                                      
$form.Opacity = 0                                                                                                    
# 미디어 플레이어 생성                                                                                                        
$mediaPlayer = New-Object System.Windows.Media.MediaPlayer                                                           
$mediaPlayer.Open("$env:C:\file\musics\dizziness.mp3")                                                                     
$mediaPlayer.Play()                                                                                                  
# WPF 호스팅을 위한 WindowsFormsHost 컨트롤 생성                                                                                
$host = New-Object WindowsFormsHost                                                                                  
$host.Dock = 'Fill'                                                                                                  
# 미디어 플레이어 컨트롤 생성                                                                                                    
$mediaElement = New-Object System.Windows.Controls.MediaElement                                                      
$mediaElement.Source = $mediaPlayer                                                                                  
$mediaElement.Stretch = 'Uniform'                                                                                    
# WindowsFormsHost에 미디어 플레이어 컨트롤 추가                                                                                  
$host.Child = $mediaElement                                                                                          
# 폼에 WindowsFormsHost 컨트롤 추가                                                                                         
$form.Controls.Add($host)                                                                                            
# 폼 실행                                                                                                               
$null = $form.ShowDialog()                                                                                           
# PowerShell 창이 꺼지지 않도록 한다                                                                                           
while (1) {                                                                                                      
    # 誘몃뵒???뚮젅?댁뼱媛 醫낅즺?섎㈃ ?ㅼ떆 ?ъ깮?쒕떎                                                                                         
    if ($mediaPlayer.Position.TotalMilliseconds -ge $mediaPlayer.NaturalDuration.TimeSpan.TotalMilliseconds) {       
        $mediaPlayer.Position = [System.TimeSpan]::FromMilliseconds(1)                                               
        $mediaPlayer.Play()                                                                                          
    }
    Timeout /T 13
    Exit                                                                                                                                                                          
}                                                                                                                    
