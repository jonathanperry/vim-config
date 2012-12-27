python << EOF
import vim

def SetBreakpoint():
    # line_no = int(vim.eval('line(".")'))

    # vim.current.buffer.append('pdb.set_trace() # breakpoint', line_no - 1)
    # vim.command('normal ==')
    vim.command('normal Opdb.set_trace() # breakpoint')
    
    for line in vim.current.buffer:
        if line == "import pdb":
            break
    else:
        vim.current.buffer.append('import pdb', 0)
        vim.command('normal j')

def RemoveBreakpoints():

    try: 
        vim.command(r'%s/\s*pdb.set_trace() # breakpoint\n//g')
        vim.command(r'%s/import pdb\n//g')
        vim.command('normal `\'')
    except vim.error:
        print 
EOF
