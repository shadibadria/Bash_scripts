import yaml
from colors import bcolors
import paramiko

def setup_data():
    dir = "setups.yaml"
    with open(dir, 'r') as stream:
        try:
            excute_info = yaml.load(stream, Loader=yaml.FullLoader)
        except yaml.YAMLError as exc:
            raise exc
    setup  = excute_info.get('setup',[])
    
    for i in range(len(setup)):
        try:
            host_ip = paramiko.SSHClient()
            host_ip.set_missing_host_key_policy(paramiko.AutoAddPolicy())
            host_ip.connect(hostname=setup[i], username='svshared', password="$giga")
            stdin, stdout, stderr = host_ip.exec_command('hostname')
            output = (stdout.readlines())[0]
            output=output.replace("\n","")
            print(f"{bcolors.OKGREEN}PASS: Host {output} ip {setup[i]}")
            host_ip.close()
        except :
            print(f"{bcolors.WARNING}ERROR: Cant Connect to ip {setup[i]}")

setup_data()
    