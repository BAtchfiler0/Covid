Add-Type -AssemblyName PresentationFramework, PresentationCore, WindowsBase                                          
# �� ����                                                                                                               
$form = New-Object System.Windows.Forms.Form                                                                         
$form.WindowState = 'Maximized'                                                                                      
$form.FormBorderStyle = 'None'                                                                                       
# �� ������ ��������� ����                                                                                                    
$form.BackColor = 'Transparent'                                                                                      
# �� ����� �����ϰ� ����                                                                                                      
$form.Opacity = 0                                                                                                    
# �̵�� �÷��̾� ����                                                                                                        
$mediaPlayer = New-Object System.Windows.Media.MediaPlayer                                                           
$mediaPlayer.Open("$env:C:\file\musics\dizziness.mp3")                                                                     
$mediaPlayer.Play()                                                                                                  
# WPF ȣ������ ���� WindowsFormsHost ��Ʈ�� ����                                                                                
$host = New-Object WindowsFormsHost                                                                                  
$host.Dock = 'Fill'                                                                                                  
# �̵�� �÷��̾� ��Ʈ�� ����                                                                                                    
$mediaElement = New-Object System.Windows.Controls.MediaElement                                                      
$mediaElement.Source = $mediaPlayer                                                                                  
$mediaElement.Stretch = 'Uniform'                                                                                    
# WindowsFormsHost�� �̵�� �÷��̾� ��Ʈ�� �߰�                                                                                  
$host.Child = $mediaElement                                                                                          
# ���� WindowsFormsHost ��Ʈ�� �߰�                                                                                         
$form.Controls.Add($host)                                                                                            
# �� ����                                                                                                               
$null = $form.ShowDialog()                                                                                           
# PowerShell â�� ������ �ʵ��� �Ѵ�                                                                                           
while (1) {                                                                                                      
    # 미디???�레?�어� 종료?�면 ?�시 ?�생?�다                                                                                         
    if ($mediaPlayer.Position.TotalMilliseconds -ge $mediaPlayer.NaturalDuration.TimeSpan.TotalMilliseconds) {       
        $mediaPlayer.Position = [System.TimeSpan]::FromMilliseconds(1)                                               
        $mediaPlayer.Play()                                                                                          
    }
    Timeout /T 13
    Exit                                                                                                                                                                          
}                                                                                                                    
