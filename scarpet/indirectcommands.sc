global('SUBCMDS',
  {
    'sample' -> ['$function sample:sample {key:$(macrovalue)}', true],
    'shop'   -> ['function mypack:shop/open',                     false],
    'say'    -> ['$say $(macrovalue)',                            true]
  }
);

global('MSG_PREFIX', '[Indirect] ');

__on_start() -> (
  command('indirectfunction', (p, ...args) -> (
    if (length(args) < 1,
      (
        help = '';
        keys_list = sort(keys(global('SUBCMDS')));
        for (keys_list, k -> (
          mapping = (global('SUBCMDS')):k;
          macro_on = mapping:1;
          usage = if(macro_on, ' <value>', '');
          line = '- ' + k + usage;
          help = if(help == '', line, help + '\n' + line);
        ));
        if (p == null, print(global('MSG_PREFIX') + help), print(p, global('MSG_PREFIX') + help));
        return(0)
      )
    );

    sub = lower(args:0);
    mapping = (global('SUBCMDS')):sub;
    if (mapping == null,
      (
        msg = 'Unknown subcommand ' + sub;
        if (p == null, print(global('MSG_PREFIX') + msg), print(p, global('MSG_PREFIX') + msg));
        return(0)
      )
    );

    cmd_template = mapping:0;
    macro_on     = mapping:1;

    arg = '';
    rest = slice(args, 1, length(args));
    for (rest, e -> (
      arg = if(arg == '', e, arg + ' ' + e)
    ));

    cmd = if(macro_on,
      (
        if (arg == '',
          (
            msg = 'Macro enabled: value required';
            if (p == null, print(global('MSG_PREFIX') + msg), print(p, global('MSG_PREFIX') + msg));
            return(0)
          )
        );
        replace(cmd_template, '$(macrovalue)', arg)
      ),
      cmd_template
    );

    ok = if (p != null,
      run('execute as ' + name(p) + ' at ' + name(p) + ' run ' + cmd),
      run(cmd)
    );

    if (ok,
      (
        msg = 'Ran ' + sub;
        if (p == null, print(global('MSG_PREFIX') + msg), print(p, global('MSG_PREFIX') + msg))
      ),
      (
        msg = 'Failed to run ' + sub;
        if (p == null, print(global('MSG_PREFIX') + msg), print(p, global('MSG_PREFIX') + msg))
      )
    );
    0
  ), {'permission' -> 0})
);
