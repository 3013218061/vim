------------------ bat ���ݲ��� --------------
@echo off
d:\dev\python25\python.exe d:\dev\mingw\emake.py %*


------------------ �Ҽ����� -----------------
regedit �޸�ע���
HKEY_CLASSES_ROOT\*\Shell ���潨�� Vim ��Ŀ����Ŀ¼��
�ұߵ�Ĭ���ַ�����Ϊ����Open With Vim Tab��
�ұ��½�һ���ַ���ֵ������Ϊ��Icon" ֵΪ��"C:\Program Files (x86)\Vim\Vim74\gvim.exe"
�����Ҽ��˵���ͼ�ꡣ

HKEY_CLASSES_ROOT\*\Shell\Vim ���潨����Ϊ command ����Ŀ
�ұߵ�Ĭ���ַ�����Ϊ��
"C:\Program Files (x86)\Vim\vim74\gvim.exe" -p --remote-tab-silent "%1" "%*"