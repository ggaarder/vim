/* profiler.c */
void profile_start(proftime_T *tm);
void profile_end(proftime_T *tm);
void profile_sub(proftime_T *tm, proftime_T *tm2);
char *profile_msg(proftime_T *tm);
float_T profile_float(proftime_T *tm);
void profile_setlimit(long msec, proftime_T *tm);
int profile_passed_limit(proftime_T *tm);
void profile_zero(proftime_T *tm);
void profile_divide(proftime_T *tm, int count, proftime_T *tm2);
void profile_add(proftime_T *tm, proftime_T *tm2);
void profile_self(proftime_T *self, proftime_T *total, proftime_T *children);
void profile_get_wait(proftime_T *tm);
void profile_sub_wait(proftime_T *tm, proftime_T *tma);
int profile_equal(proftime_T *tm1, proftime_T *tm2);
int profile_cmp(const proftime_T *tm1, const proftime_T *tm2);
void ex_profile(exarg_T *eap);
char_u *get_profile_name(expand_T *xp, int idx);
void set_context_in_profile_cmd(expand_T *xp, char_u *arg);
void profile_dump(void);
void prof_inchar_enter(void);
void prof_inchar_exit(void);
int prof_def_func(void);
void prof_sort_list(FILE *fd, ufunc_T **sorttab, int st_len, char *title, int prefer_self);
void prof_func_line(FILE *fd, int count, proftime_T *total, proftime_T *self, int prefer_self);
int prof_total_cmp(const void *s1, const void *s2);
int prof_self_cmp(const void *s1, const void *s2);
void func_do_profile(ufunc_T *fp);
void prof_child_enter(proftime_T *tm);
void prof_child_exit(proftime_T *tm);
void func_line_start(void *cookie);
void func_line_exec(void *cookie);
void func_line_end(void *cookie);
/* vim: set ft=c : */