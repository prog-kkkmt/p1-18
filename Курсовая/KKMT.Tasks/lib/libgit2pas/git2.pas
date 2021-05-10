unit git2;

{$modeswitch ADVANCEDRECORDS}

interface

uses
  ctypes;

type size_t = cuint64;

type
  TProcedureSigPointerPayloadPointer = procedure (sig:pointer; payload:pointer);



type
  TFunctionVarScoreCintSigaPointerSigbPointerPayloadPointerCint = function (var score:cint; siga:pointer; sigb:pointer; payload:pointer):cint;
type
  TArray0to31OfCuchar = array[0..31] of cuchar;
type
  TArray0to19OfCuchar = array[0..19] of cuchar;
type
  TArray0to15OfCuchar = array[0..15] of cuchar;
type
  TArray0to127OfCchar = array[0..127] of cchar;

type
  git_annotated_commit = record;
  git_apply_flags_t = record;
  git_apply_location_t = record;
  git_apply_options = record;
  git_attr_value_t = record;
  git_blame = record;
  git_blame_flag_t = record;
  git_blame_hunk = record;
  git_blame_options = record;
  git_blob = record;
  git_blob_filter_flag_t = record;
  git_blob_filter_options = record;
  git_branch_iterator = record;
  git_cert = record;
  git_cert_hostkey = record;
  git_cert_ssh_t = record;
  git_cert_t = record;
  git_cert_x509 = record;
  git_checkout_notify_t = record;
  git_checkout_options = record;
  git_checkout_perfdata = record;
  git_checkout_strategy_t = record;
  git_cherrypick_options = record;
  git_clone_local_t = record;
  git_clone_options = record;
  git_commit = record;
  git_config = record;
  git_config_entry = record;
  git_config_iterator = record;
  git_config_level_t = record;
  git_configmap = record;
  git_configmap_t = record;
  git_credential = record;
  git_credential_t = record;
  git_delta_t = record;
  git_describe_format_options = record;
  git_describe_options = record;
  git_describe_result = record;
  git_describe_strategy_t = record;
  git_diff = record;
  git_diff_binary = record;
  git_diff_binary_file = record;
  git_diff_binary_t = record;
  git_diff_delta = record;
  git_diff_file = record;
  git_diff_find_options = record;
  git_diff_find_t = record;
  git_diff_flag_t = record;
  git_diff_format_email_flags_t = record;
  git_diff_format_email_options = record;
  git_diff_format_t = record;
  git_diff_hunk = record;
  git_diff_line = record;
  git_diff_line_t = record;
  git_diff_option_t = record;
  git_diff_options = record;
  git_diff_patchid_options = record;
  git_diff_similarity_metric = record;
  git_diff_stats = record;
  git_diff_stats_format_t = record;
  git_direction = record;
  git_error = record;
  git_error_code = record;
  git_error_t = record;
  git_fetch_options = record;
  git_fetch_prune_t = record;
  git_filter_flag_t = record;
  git_filter_list = record;
  git_filter_mode_t = record;
  git_index = record;
  git_index_add_option_t = record;
  git_index_capability_t = record;
  git_index_conflict_iterator = record;
  git_index_entry = record;
  git_index_entry_extended_flag_t = record;
  git_index_entry_flag_t = record;
  git_index_iterator = record;
  git_index_stage_t = record;
  git_index_time = record;
  git_indexer = record;
  git_indexer_options = record;
  git_indexer_progress = record;
  git_mailmap = record;
  git_merge_analysis_t = record;
  git_merge_file_favor_t = record;
  git_merge_file_flag_t = record;
  git_merge_file_input = record;
  git_merge_file_options = record;
  git_merge_file_result = record;
  git_merge_flag_t = record;
  git_merge_options = record;
  git_merge_preference_t = record;
  git_message_trailer = record;
  git_message_trailer_array = record;
  git_note = record;
  git_note_iterator = record;
  git_object = record;
  git_odb = record;
  git_odb_backend = record;
  git_odb_expand_id = record;
  git_odb_object = record;
  git_odb_stream = record;
  git_odb_stream_t = record;
  git_odb_writepack = record;
  git_oid_shorten = record;
  git_oidarray = record;
  git_packbuilder = record;
  git_packbuilder_stage_t = record;
  git_patch = record;
  git_pathspec = record;
  git_pathspec_flag_t = record;
  git_pathspec_match_list = record;
  git_proxy_options = record;
  git_proxy_t = record;
  git_push_options = record;
  git_push_update = record;
  git_rebase = record;
  git_rebase_operation = record;
  git_rebase_operation_t = record;
  git_rebase_options = record;
  git_refdb = record;
  git_reference = record;
  git_reference_format_t = record;
  git_reference_iterator = record;
  git_reflog = record;
  git_reflog_entry = record;
  git_refspec = record;
  git_remote = record;
  git_remote_autotag_option_t = record;
  git_remote_callbacks = record;
  git_remote_completion_t = record;
  git_remote_create_flags = record;
  git_remote_create_options = record;
  git_remote_head = record;
  git_repository = record;
  git_repository_init_flag_t = record;
  git_repository_init_mode_t = record;
  git_repository_init_options = record;
  git_repository_item_t = record;
  git_repository_open_flag_t = record;
  git_repository_state_t = record;
  git_reset_t = record;
  git_revert_options = record;
  git_revparse_mode_t = record;
  git_revspec = record;
  git_revwalk = record;
  git_sort_t = record;
  git_stash_apply_flags = record;
  git_stash_apply_options = record;
  git_stash_apply_progress_t = record;
  git_stash_flags = record;
  git_status_entry = record;
  git_status_list = record;
  git_status_opt_t = record;
  git_status_options = record;
  git_status_show_t = record;
  git_status_t = record;
  git_strarray = record;
  git_submodule = record;
  git_submodule_status_t = record;
  git_submodule_update_options = record;
  git_tag = record;
  git_transaction = record;
  git_transport = record;
  git_tree = record;
  git_tree_entry = record;
  git_tree_update = record;
  git_tree_update_t = record;
  git_treebuilder = record;
  git_treewalk_mode = record;
  git_worktree = record;
  git_worktree_add_options = record;
  git_worktree_prune_options = record;
  git_worktree_prune_t = record;




{
  Automatically converted by H2Pas 1.0.0 from /media/lanode/Хранилище/Development/KkmtTesting/lib/libgit2pas/libgit2/h2pas/git2_pp.tmp.h
  The following command line parameters were used:
    -e
    -c
    -p
    -s
    -S
    -d
    -D
    -w
    -C
    -l
    libgit2
    -o
    /media/lanode/Хранилище/Development/KkmtTesting/lib/libgit2pas/libgit2/h2pas/git2_pp.pas
    /media/lanode/Хранилище/Development/KkmtTesting/lib/libgit2pas/libgit2/h2pas/git2_pp.tmp.h
}

const
  External_library='libgit2'; {Setup as you need}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}







Type
Pgit_annotated_commit  = ^git_annotated_commit;
Pgit_apply_flags_t  = ^git_apply_flags_t;
Pgit_apply_location_t  = ^git_apply_location_t;
Pgit_apply_options  = ^git_apply_options;
Pgit_attr_value_t  = ^git_attr_value_t;
Pgit_blame  = ^git_blame;
Pgit_blame_flag_t  = ^git_blame_flag_t;
Pgit_blame_hunk  = ^git_blame_hunk;
Pgit_blame_options  = ^git_blame_options;
Pgit_blob  = ^git_blob;
Pgit_blob_filter_flag_t  = ^git_blob_filter_flag_t;
Pgit_blob_filter_options  = ^git_blob_filter_options;
Pgit_branch_iterator  = ^git_branch_iterator;
Pgit_branch_t  = ^git_branch_t;
Pgit_buf  = ^git_buf;
Pgit_cert  = ^git_cert;
Pgit_cert_hostkey  = ^git_cert_hostkey;
Pgit_cert_ssh_t  = ^git_cert_ssh_t;
Pgit_cert_t  = ^git_cert_t;
Pgit_cert_x509  = ^git_cert_x509;
Pgit_checkout_notify_t  = ^git_checkout_notify_t;
Pgit_checkout_options  = ^git_checkout_options;
Pgit_checkout_perfdata  = ^git_checkout_perfdata;
Pgit_checkout_strategy_t  = ^git_checkout_strategy_t;
Pgit_cherrypick_options  = ^git_cherrypick_options;
Pgit_clone_local_t  = ^git_clone_local_t;
Pgit_clone_options  = ^git_clone_options;
Pgit_commit  = ^git_commit;
Pgit_config  = ^git_config;
Pgit_config_entry  = ^git_config_entry;
Pgit_config_iterator  = ^git_config_iterator;
Pgit_config_level_t  = ^git_config_level_t;
Pgit_configmap  = ^git_configmap;
Pgit_configmap_t  = ^git_configmap_t;
Pgit_credential  = ^git_credential;
Pgit_credential_t  = ^git_credential_t;
Pgit_delta_t  = ^git_delta_t;
Pgit_describe_format_options  = ^git_describe_format_options;
Pgit_describe_options  = ^git_describe_options;
Pgit_describe_result  = ^git_describe_result;
Pgit_describe_strategy_t  = ^git_describe_strategy_t;
Pgit_diff  = ^git_diff;
Pgit_diff_binary  = ^git_diff_binary;
Pgit_diff_binary_file  = ^git_diff_binary_file;
Pgit_diff_binary_t  = ^git_diff_binary_t;
Pgit_diff_delta  = ^git_diff_delta;
Pgit_diff_file  = ^git_diff_file;
Pgit_diff_find_options  = ^git_diff_find_options;
Pgit_diff_find_t  = ^git_diff_find_t;
Pgit_diff_flag_t  = ^git_diff_flag_t;
Pgit_diff_format_email_flags_t  = ^git_diff_format_email_flags_t;
Pgit_diff_format_email_options  = ^git_diff_format_email_options;
Pgit_diff_format_t  = ^git_diff_format_t;
Pgit_diff_hunk  = ^git_diff_hunk;
Pgit_diff_line  = ^git_diff_line;
Pgit_diff_line_t  = ^git_diff_line_t;
Pgit_diff_option_t  = ^git_diff_option_t;
Pgit_diff_options  = ^git_diff_options;
Pgit_diff_patchid_options  = ^git_diff_patchid_options;
Pgit_diff_similarity_metric  = ^git_diff_similarity_metric;
Pgit_diff_stats  = ^git_diff_stats;
Pgit_diff_stats_format_t  = ^git_diff_stats_format_t;
Pgit_direction  = ^git_direction;
Pgit_error  = ^git_error;
Pgit_error_code  = ^git_error_code;
Pgit_error_t  = ^git_error_t;
Pgit_feature_t  = ^git_feature_t;
Pgit_fetch_options  = ^git_fetch_options;
Pgit_fetch_prune_t  = ^git_fetch_prune_t;
Pgit_filemode_t  = ^git_filemode_t;
Pgit_filter_flag_t  = ^git_filter_flag_t;
Pgit_filter_list  = ^git_filter_list;
Pgit_filter_mode_t  = ^git_filter_mode_t;
Pgit_index  = ^git_index;
Pgit_index_add_option_t  = ^git_index_add_option_t;
Pgit_index_capability_t  = ^git_index_capability_t;
Pgit_index_conflict_iterator  = ^git_index_conflict_iterator;
Pgit_index_entry  = ^git_index_entry;
Pgit_index_entry_extended_flag_t  = ^git_index_entry_extended_flag_t;
Pgit_index_entry_flag_t  = ^git_index_entry_flag_t;
Pgit_index_iterator  = ^git_index_iterator;
Pgit_index_stage_t  = ^git_index_stage_t;
Pgit_index_time  = ^git_index_time;
Pgit_indexer  = ^git_indexer;
Pgit_indexer_options  = ^git_indexer_options;
Pgit_indexer_progress  = ^git_indexer_progress;
Pgit_libgit2_opt_t  = ^git_libgit2_opt_t;
Pgit_mailmap  = ^git_mailmap;
Pgit_merge_analysis_t  = ^git_merge_analysis_t;
Pgit_merge_file_favor_t  = ^git_merge_file_favor_t;
Pgit_merge_file_flag_t  = ^git_merge_file_flag_t;
Pgit_merge_file_input  = ^git_merge_file_input;
Pgit_merge_file_options  = ^git_merge_file_options;
Pgit_merge_file_result  = ^git_merge_file_result;
Pgit_merge_flag_t  = ^git_merge_flag_t;
Pgit_merge_options  = ^git_merge_options;
Pgit_merge_preference_t  = ^git_merge_preference_t;
Pgit_message_trailer  = ^git_message_trailer;
Pgit_message_trailer_array  = ^git_message_trailer_array;
Pgit_note  = ^git_note;
Pgit_note_iterator  = ^git_note_iterator;
Pgit_object  = ^git_object;
Pgit_object_size_t  = ^git_object_size_t;
Pgit_object_t  = ^git_object_t;
Pgit_odb  = ^git_odb;
Pgit_odb_backend  = ^git_odb_backend;
Pgit_odb_expand_id  = ^git_odb_expand_id;
Pgit_odb_object  = ^git_odb_object;
Pgit_odb_stream  = ^git_odb_stream;
Pgit_odb_stream_t  = ^git_odb_stream_t;
Pgit_odb_writepack  = ^git_odb_writepack;
Pgit_off_t  = ^git_off_t;
Pgit_oid  = ^git_oid;
Pgit_oid_shorten  = ^git_oid_shorten;
Pgit_oidarray  = ^git_oidarray;
Pgit_packbuilder  = ^git_packbuilder;
Pgit_packbuilder_stage_t  = ^git_packbuilder_stage_t;
Pgit_patch  = ^git_patch;
Pgit_pathspec  = ^git_pathspec;
Pgit_pathspec_flag_t  = ^git_pathspec_flag_t;
Pgit_pathspec_match_list  = ^git_pathspec_match_list;
Pgit_proxy_options  = ^git_proxy_options;
Pgit_proxy_t  = ^git_proxy_t;
Pgit_push_options  = ^git_push_options;
Pgit_push_update  = ^git_push_update;
Pgit_rebase  = ^git_rebase;
Pgit_rebase_operation  = ^git_rebase_operation;
Pgit_rebase_operation_t  = ^git_rebase_operation_t;
Pgit_rebase_options  = ^git_rebase_options;
Pgit_refdb  = ^git_refdb;
Pgit_reference  = ^git_reference;
Pgit_reference_format_t  = ^git_reference_format_t;
Pgit_reference_iterator  = ^git_reference_iterator;
Pgit_reference_t  = ^git_reference_t;
Pgit_reflog  = ^git_reflog;
Pgit_reflog_entry  = ^git_reflog_entry;
Pgit_refspec  = ^git_refspec;
Pgit_remote  = ^git_remote;
Pgit_remote_autotag_option_t  = ^git_remote_autotag_option_t;
Pgit_remote_callbacks  = ^git_remote_callbacks;
Pgit_remote_completion_t  = ^git_remote_completion_t;
Pgit_remote_create_flags  = ^git_remote_create_flags;
Pgit_remote_create_options  = ^git_remote_create_options;
Pgit_remote_head  = ^git_remote_head;
Pgit_repository  = ^git_repository;
Pgit_repository_init_flag_t  = ^git_repository_init_flag_t;
Pgit_repository_init_mode_t  = ^git_repository_init_mode_t;
Pgit_repository_init_options  = ^git_repository_init_options;
Pgit_repository_item_t  = ^git_repository_item_t;
Pgit_repository_open_flag_t  = ^git_repository_open_flag_t;
Pgit_repository_state_t  = ^git_repository_state_t;
Pgit_reset_t  = ^git_reset_t;
Pgit_revert_options  = ^git_revert_options;
Pgit_revparse_mode_t  = ^git_revparse_mode_t;
Pgit_revspec  = ^git_revspec;
Pgit_revwalk  = ^git_revwalk;
Pgit_signature  = ^git_signature;
Pgit_sort_t  = ^git_sort_t;
Pgit_stash_apply_flags  = ^git_stash_apply_flags;
Pgit_stash_apply_options  = ^git_stash_apply_options;
Pgit_stash_apply_progress_t  = ^git_stash_apply_progress_t;
Pgit_stash_flags  = ^git_stash_flags;
Pgit_status_entry  = ^git_status_entry;
Pgit_status_list  = ^git_status_list;
Pgit_status_opt_t  = ^git_status_opt_t;
Pgit_status_options  = ^git_status_options;
Pgit_status_show_t  = ^git_status_show_t;
Pgit_status_t  = ^git_status_t;
Pgit_strarray  = ^git_strarray;
Pgit_submodule  = ^git_submodule;
Pgit_submodule_ignore_t  = ^git_submodule_ignore_t;
Pgit_submodule_recurse_t  = ^git_submodule_recurse_t;
Pgit_submodule_status_t  = ^git_submodule_status_t;
Pgit_submodule_update_options  = ^git_submodule_update_options;
Pgit_submodule_update_t  = ^git_submodule_update_t;
Pgit_tag  = ^git_tag;
Pgit_time  = ^git_time;
Pgit_time_t  = ^git_time_t;
Pgit_transaction  = ^git_transaction;
Pgit_transport  = ^git_transport;
Pgit_tree  = ^git_tree;
Pgit_tree_entry  = ^git_tree_entry;
Pgit_tree_update  = ^git_tree_update;
Pgit_tree_update_t  = ^git_tree_update_t;
Pgit_treebuilder  = ^git_treebuilder;
Pgit_treewalk_mode  = ^git_treewalk_mode;
Pgit_worktree  = ^git_worktree;
Pgit_worktree_add_options  = ^git_worktree_add_options;
Pgit_worktree_prune_options  = ^git_worktree_prune_options;
Pgit_worktree_prune_t  = ^git_worktree_prune_t;
Pgit_writestream  = ^git_writestream;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



function git_libgit2_version(var major:cint; var minor:cint; var rev:cint):cint;cdecl;external External_library name 'git_libgit2_version';
type
  git_feature_t =  Longint;
  Const
    GIT_FEATURE_THREADS = 1 shl 0;
    GIT_FEATURE_HTTPS = 1 shl 1;
    GIT_FEATURE_SSH = 1 shl 2;
    GIT_FEATURE_NSEC = 1 shl 3;


function git_libgit2_features:cint;cdecl;external External_library name 'git_libgit2_features';
type
  git_libgit2_opt_t =  Longint;
  Const
    GIT_OPT_GET_MWINDOW_SIZE = 0;
    GIT_OPT_SET_MWINDOW_SIZE = 1;
    GIT_OPT_GET_MWINDOW_MAPPED_LIMIT = 2;
    GIT_OPT_SET_MWINDOW_MAPPED_LIMIT = 3;
    GIT_OPT_GET_SEARCH_PATH = 4;
    GIT_OPT_SET_SEARCH_PATH = 5;
    GIT_OPT_SET_CACHE_OBJECT_LIMIT = 6;
    GIT_OPT_SET_CACHE_MAX_SIZE = 7;
    GIT_OPT_ENABLE_CACHING = 8;
    GIT_OPT_GET_CACHED_MEMORY = 9;
    GIT_OPT_GET_TEMPLATE_PATH = 10;
    GIT_OPT_SET_TEMPLATE_PATH = 11;
    GIT_OPT_SET_SSL_CERT_LOCATIONS = 12;
    GIT_OPT_SET_USER_AGENT = 13;
    GIT_OPT_ENABLE_STRICT_OBJECT_CREATION = 14;
    GIT_OPT_ENABLE_STRICT_SYMBOLIC_REF_CREATION = 15;
    GIT_OPT_SET_SSL_CIPHERS = 16;
    GIT_OPT_GET_USER_AGENT = 17;
    GIT_OPT_ENABLE_OFS_DELTA = 18;
    GIT_OPT_ENABLE_FSYNC_GITDIR = 19;
    GIT_OPT_GET_WINDOWS_SHAREMODE = 20;
    GIT_OPT_SET_WINDOWS_SHAREMODE = 21;
    GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION = 22;
    GIT_OPT_SET_ALLOCATOR = 23;
    GIT_OPT_ENABLE_UNSAVED_INDEX_SAFETY = 24;
    GIT_OPT_GET_PACK_MAX_OBJECTS = 25;
    GIT_OPT_SET_PACK_MAX_OBJECTS = 26;
    GIT_OPT_DISABLE_PACK_KEEP_FILE_CHECKS = 27;
    GIT_OPT_ENABLE_HTTP_EXPECT_CONTINUE = 28;
    GIT_OPT_GET_MWINDOW_FILE_LIMIT = 29;
    GIT_OPT_SET_MWINDOW_FILE_LIMIT = 30;


function git_libgit2_opts(option:cint; args:array of const):cint;cdecl;external External_library name 'git_libgit2_opts';
function git_libgit2_opts(option:cint):cint;cdecl;external External_library name 'git_libgit2_opts';
type
  git_off_t = int64_t;

  git_time_t = int64_t;

  git_object_size_t = uint64_t;

  git_buf = record
      ptr : pcchar;
      asize : size_t;
      size : size_t;
    end;

procedure git_buf_dispose(var buffer:git_buf);cdecl;external External_library name 'git_buf_dispose';
function git_buf_grow(var buffer:git_buf; target_size:size_t):cint;cdecl;external External_library name 'git_buf_grow';
function git_buf_set(var buffer:git_buf; data:pointer; datalen:size_t):cint;cdecl;external External_library name 'git_buf_set';
function git_buf_is_binary(var buf:git_buf):cint;cdecl;external External_library name 'git_buf_is_binary';
function git_buf_contains_nul(var buf:git_buf):cint;cdecl;external External_library name 'git_buf_contains_nul';
type
  git_oid = record
      id : TArray0to19OfCuchar;
    end;
  TFunctionRefnamePccharVarAGit_oidVarBGit_oidDataPointerCint = function (refname:pcchar; var a:git_oid; var b:git_oid; data:pointer):cint;
  TFunctionVarStreamGit_odb_streamVarOidGit_oidCint = function (var stream:git_odb_stream; var oid:git_oid):cint;

function git_oid_fromstr(var outv:git_oid; str:pcchar):cint;cdecl;external External_library name 'git_oid_fromstr';
function git_oid_fromstrp(var outv:git_oid; str:pcchar):cint;cdecl;external External_library name 'git_oid_fromstrp';
function git_oid_fromstrn(var outv:git_oid; str:pcchar; length:size_t):cint;cdecl;external External_library name 'git_oid_fromstrn';
function git_oid_fromraw(var outv:git_oid; raw:pcuchar):cint;cdecl;external External_library name 'git_oid_fromraw';
function git_oid_fmt(outv:pcchar; var id:git_oid):cint;cdecl;external External_library name 'git_oid_fmt';
function git_oid_nfmt(outv:pcchar; n:size_t; var id:git_oid):cint;cdecl;external External_library name 'git_oid_nfmt';
function git_oid_pathfmt(outv:pcchar; var id:git_oid):cint;cdecl;external External_library name 'git_oid_pathfmt';
function git_oid_tostr_s(var oid:git_oid):pcchar;cdecl;external External_library name 'git_oid_tostr_s';
function git_oid_tostr(outv:pcchar; n:size_t; var id:git_oid):pcchar;cdecl;external External_library name 'git_oid_tostr';
function git_oid_cpy(var outv:git_oid; var src:git_oid):cint;cdecl;external External_library name 'git_oid_cpy';
function git_oid_cmp(var a:git_oid; var b:git_oid):cint;cdecl;external External_library name 'git_oid_cmp';
function git_oid_equal(var a:git_oid; var b:git_oid):cint;cdecl;external External_library name 'git_oid_equal';
function git_oid_ncmp(var a:git_oid; var b:git_oid; len:size_t):cint;cdecl;external External_library name 'git_oid_ncmp';
function git_oid_streq(var id:git_oid; str:pcchar):cint;cdecl;external External_library name 'git_oid_streq';
function git_oid_strcmp(var id:git_oid; str:pcchar):cint;cdecl;external External_library name 'git_oid_strcmp';
function git_oid_is_zero(var id:git_oid):cint;cdecl;external External_library name 'git_oid_is_zero';


function git_oid_shorten_new(min_length:size_t):Pgit_oid_shorten;cdecl;external External_library name 'git_oid_shorten_new';
function git_oid_shorten_add(var os:git_oid_shorten; text_id:pcchar):cint;cdecl;external External_library name 'git_oid_shorten_add';
procedure git_oid_shorten_free(var os:git_oid_shorten);cdecl;external External_library name 'git_oid_shorten_free';
type
  git_object_t =  Longint;
  Const
    GIT_OBJECT_ANY = -(2);
    GIT_OBJECT_INVALID = -(1);
    GIT_OBJECT_COMMIT = 1;
    GIT_OBJECT_TREE = 2;
    GIT_OBJECT_BLOB = 3;
    GIT_OBJECT_TAG = 4;
    GIT_OBJECT_OFS_DELTA = 6;
    GIT_OBJECT_REF_DELTA = 7;

type

  git_time = record
      time : git_time_t;
      offset : cint;
      sign : cchar;
    end;

  git_signature = record
      name : pcchar;
      email : pcchar;
      when : git_time;
    end;

  git_reference_t =  Longint;
  Const
    GIT_REFERENCE_INVALID = 0;
    GIT_REFERENCE_DIRECT = 1;
    GIT_REFERENCE_SYMBOLIC = 2;
    GIT_REFERENCE_ALL = GIT_REFERENCE_DIRECT or GIT_REFERENCE_SYMBOLIC;

type
  git_branch_t =  Longint;
  Const
    GIT_BRANCH_LOCAL = 1;
    GIT_BRANCH_REMOTE = 2;
    GIT_BRANCH_ALL = GIT_BRANCH_LOCAL or GIT_BRANCH_REMOTE;

type
  git_filemode_t =  Longint;
  Const
    GIT_FILEMODE_UNREADABLE = 0000000;
    GIT_FILEMODE_TREE = 0040000;
    GIT_FILEMODE_BLOB = 0100644;
    GIT_FILEMODE_BLOB_EXECUTABLE = 0100755;
    GIT_FILEMODE_LINK = 0120000;
    GIT_FILEMODE_COMMIT = 0160000;

type

  git_submodule_update_t =  Longint;
  Const
    GIT_SUBMODULE_UPDATE_CHECKOUT = 1;
    GIT_SUBMODULE_UPDATE_REBASE = 2;
    GIT_SUBMODULE_UPDATE_MERGE = 3;
    GIT_SUBMODULE_UPDATE_NONE = 4;
    GIT_SUBMODULE_UPDATE_DEFAULT = 0;

type
  git_submodule_ignore_t =  Longint;
  Const
    GIT_SUBMODULE_IGNORE_UNSPECIFIED = -(1);
    GIT_SUBMODULE_IGNORE_NONE = 1;
    GIT_SUBMODULE_IGNORE_UNTRACKED = 2;
    GIT_SUBMODULE_IGNORE_DIRTY = 3;
    GIT_SUBMODULE_IGNORE_ALL = 4;

type
  git_submodule_recurse_t =  Longint;
  Const
    GIT_SUBMODULE_RECURSE_NO = 0;
    GIT_SUBMODULE_RECURSE_YES = 1;
    GIT_SUBMODULE_RECURSE_ONDEMAND = 2;

type
  git_writestream = record
      write : TFunctionVarStreamGit_writestreamBufferPccharLenSize_tCint;cdecl;
      close : TFunctionVarStreamGit_writestreamCint;cdecl;
      free : TProcedureVarStreamGit_writestream;cdecl;
    end;
type
  TProcedureVarStreamGit_writestream = procedure (var stream:git_writestream);
type
  TFunctionVarStreamGit_writestreamCint = function (var stream:git_writestream):cint;
type
  TFunctionVarStreamGit_writestreamBufferPccharLenSize_tCint = function (var stream:git_writestream; buffer:pcchar; len:size_t):cint;


function git_repository_open(var out:Pgit_repository; path:pcchar):cint;cdecl;external External_library name 'git_repository_open';
function git_repository_open_from_worktree(var out:Pgit_repository; var wt:git_worktree):cint;cdecl;external External_library name 'git_repository_open_from_worktree';
function git_repository_wrap_odb(var out:Pgit_repository; var odb:git_odb):cint;cdecl;external External_library name 'git_repository_wrap_odb';
function git_repository_discover(var out:git_buf; start_path:pcchar; across_fs:cint; ceiling_dirs:pcchar):cint;cdecl;external External_library name 'git_repository_discover';
type
  git_repository_open_flag_t =  Longint;
  Const
    GIT_REPOSITORY_OPEN_NO_SEARCH = 1 shl 0;
    GIT_REPOSITORY_OPEN_CROSS_FS = 1 shl 1;
    GIT_REPOSITORY_OPEN_BARE = 1 shl 2;
    GIT_REPOSITORY_OPEN_NO_DOTGIT = 1 shl 3;
    GIT_REPOSITORY_OPEN_FROM_ENV = 1 shl 4;


function git_repository_open_ext(var out:Pgit_repository; path:pcchar; flags:cuint; ceiling_dirs:pcchar):cint;cdecl;external External_library name 'git_repository_open_ext';
function git_repository_open_bare(var out:Pgit_repository; bare_path:pcchar):cint;cdecl;external External_library name 'git_repository_open_bare';
procedure git_repository_free(var repo:git_repository);cdecl;external External_library name 'git_repository_free';
function git_repository_init(var out:Pgit_repository; path:pcchar; is_bare:cunsigned):cint;cdecl;external External_library name 'git_repository_init';
type
  git_repository_init_flag_t =  Longint;
  Const
    GIT_REPOSITORY_INIT_BARE = 1 shl 0;
    GIT_REPOSITORY_INIT_NO_REINIT = 1 shl 1;
    GIT_REPOSITORY_INIT_NO_DOTGIT_DIR = 1 shl 2;
    GIT_REPOSITORY_INIT_MKDIR = 1 shl 3;
    GIT_REPOSITORY_INIT_MKPATH = 1 shl 4;
    GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE = 1 shl 5;
    GIT_REPOSITORY_INIT_RELATIVE_GITLINK = 1 shl 6;

type
  git_repository_init_mode_t =  Longint;
  Const
    GIT_REPOSITORY_INIT_SHARED_UMASK = 0;
    GIT_REPOSITORY_INIT_SHARED_GROUP = 0002775;
    GIT_REPOSITORY_INIT_SHARED_ALL = 0002777;

type
  git_repository_init_options = record
      version : cuint;
      flags : uint32_t;
      mode : uint32_t;
      workdir_path : pcchar;
      description : pcchar;
      template_path : pcchar;
      initial_head : pcchar;
      origin_url : pcchar;
    end;

function git_repository_init_options_init(var opts:git_repository_init_options; version:cuint):cint;cdecl;external External_library name 'git_repository_init_options_init';
function git_repository_init_ext(var out:Pgit_repository; repo_path:pcchar; var opts:git_repository_init_options):cint;cdecl;external External_library name 'git_repository_init_ext';
function git_repository_head(var out:Pgit_reference; var repo:git_repository):cint;cdecl;external External_library name 'git_repository_head';
function git_repository_head_for_worktree(var out:Pgit_reference; var repo:git_repository; name:pcchar):cint;cdecl;external External_library name 'git_repository_head_for_worktree';
function git_repository_head_detached(var repo:git_repository):cint;cdecl;external External_library name 'git_repository_head_detached';
function git_repository_head_detached_for_worktree(var repo:git_repository; name:pcchar):cint;cdecl;external External_library name 'git_repository_head_detached_for_worktree';
function git_repository_head_unborn(var repo:git_repository):cint;cdecl;external External_library name 'git_repository_head_unborn';
function git_repository_is_empty(var repo:git_repository):cint;cdecl;external External_library name 'git_repository_is_empty';
type
  git_repository_item_t =  Longint;
  Const
    GIT_REPOSITORY_ITEM_GITDIR = 0;
    GIT_REPOSITORY_ITEM_WORKDIR = 1;
    GIT_REPOSITORY_ITEM_COMMONDIR = 2;
    GIT_REPOSITORY_ITEM_INDEX = 3;
    GIT_REPOSITORY_ITEM_OBJECTS = 4;
    GIT_REPOSITORY_ITEM_REFS = 5;
    GIT_REPOSITORY_ITEM_PACKED_REFS = 6;
    GIT_REPOSITORY_ITEM_REMOTES = 7;
    GIT_REPOSITORY_ITEM_CONFIG = 8;
    GIT_REPOSITORY_ITEM_INFO = 9;
    GIT_REPOSITORY_ITEM_HOOKS = 10;
    GIT_REPOSITORY_ITEM_LOGS = 11;
    GIT_REPOSITORY_ITEM_MODULES = 12;
    GIT_REPOSITORY_ITEM_WORKTREES = 13;
    GIT_REPOSITORY_ITEM__LAST = 14;


function git_repository_item_path(var out:git_buf; var repo:git_repository; item:git_repository_item_t):cint;cdecl;external External_library name 'git_repository_item_path';
function git_repository_path(var repo:git_repository):pcchar;cdecl;external External_library name 'git_repository_path';
function git_repository_workdir(var repo:git_repository):pcchar;cdecl;external External_library name 'git_repository_workdir';
function git_repository_commondir(var repo:git_repository):pcchar;cdecl;external External_library name 'git_repository_commondir';
function git_repository_set_workdir(var repo:git_repository; workdir:pcchar; update_gitlink:cint):cint;cdecl;external External_library name 'git_repository_set_workdir';
function git_repository_is_bare(var repo:git_repository):cint;cdecl;external External_library name 'git_repository_is_bare';
function git_repository_is_worktree(var repo:git_repository):cint;cdecl;external External_library name 'git_repository_is_worktree';
function git_repository_config(var out:Pgit_config; var repo:git_repository):cint;cdecl;external External_library name 'git_repository_config';
function git_repository_config_snapshot(var out:Pgit_config; var repo:git_repository):cint;cdecl;external External_library name 'git_repository_config_snapshot';
function git_repository_odb(var out:Pgit_odb; var repo:git_repository):cint;cdecl;external External_library name 'git_repository_odb';
function git_repository_refdb(var out:Pgit_refdb; var repo:git_repository):cint;cdecl;external External_library name 'git_repository_refdb';
function git_repository_index(var out:Pgit_index; var repo:git_repository):cint;cdecl;external External_library name 'git_repository_index';
function git_repository_message(var out:git_buf; var repo:git_repository):cint;cdecl;external External_library name 'git_repository_message';
function git_repository_message_remove(var repo:git_repository):cint;cdecl;external External_library name 'git_repository_message_remove';
function git_repository_state_cleanup(var repo:git_repository):cint;cdecl;external External_library name 'git_repository_state_cleanup';
type

  git_repository_fetchhead_foreach_cb = function (ref_name:pcchar; remote_url:pcchar; var oid:git_oid; is_merge:cuint; payload:pointer):cint;cdecl;

function git_repository_fetchhead_foreach(var repo:git_repository; callback:git_repository_fetchhead_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_repository_fetchhead_foreach';
type

  git_repository_mergehead_foreach_cb = function (var oid:git_oid; payload:pointer):cint;cdecl;

function git_repository_mergehead_foreach(var repo:git_repository; callback:git_repository_mergehead_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_repository_mergehead_foreach';
function git_repository_hashfile(var out:git_oid; var repo:git_repository; path:pcchar; _type:git_object_t; as_path:pcchar):cint;cdecl;external External_library name 'git_repository_hashfile';
function git_repository_set_head(var repo:git_repository; refname:pcchar):cint;cdecl;external External_library name 'git_repository_set_head';
function git_repository_set_head_detached(var repo:git_repository; var commitish:git_oid):cint;cdecl;external External_library name 'git_repository_set_head_detached';
function git_repository_set_head_detached_from_annotated(var repo:git_repository; var commitish:git_annotated_commit):cint;cdecl;external External_library name 'git_repository_set_head_detached_from_annotated';
function git_repository_detach_head(var repo:git_repository):cint;cdecl;external External_library name 'git_repository_detach_head';
type
  git_repository_state_t =  Longint;
  Const
    GIT_REPOSITORY_STATE_NONE = 0;
    GIT_REPOSITORY_STATE_MERGE = 1;
    GIT_REPOSITORY_STATE_REVERT = 2;
    GIT_REPOSITORY_STATE_REVERT_SEQUENCE = 3;
    GIT_REPOSITORY_STATE_CHERRYPICK = 4;
    GIT_REPOSITORY_STATE_CHERRYPICK_SEQUENCE = 5;
    GIT_REPOSITORY_STATE_BISECT = 6;
    GIT_REPOSITORY_STATE_REBASE = 7;
    GIT_REPOSITORY_STATE_REBASE_INTERACTIVE = 8;
    GIT_REPOSITORY_STATE_REBASE_MERGE = 9;
    GIT_REPOSITORY_STATE_APPLY_MAILBOX = 10;
    GIT_REPOSITORY_STATE_APPLY_MAILBOX_OR_REBASE = 11;


function git_repository_state(var repo:git_repository):cint;cdecl;external External_library name 'git_repository_state';
function git_repository_set_namespace(var repo:git_repository; nmspace:pcchar):cint;cdecl;external External_library name 'git_repository_set_namespace';
function git_repository_get_namespace(var repo:git_repository):pcchar;cdecl;external External_library name 'git_repository_get_namespace';
function git_repository_is_shallow(var repo:git_repository):cint;cdecl;external External_library name 'git_repository_is_shallow';
function git_repository_ident(name:Ppcchar; email:Ppcchar; var repo:git_repository):cint;cdecl;external External_library name 'git_repository_ident';
function git_repository_set_ident(var repo:git_repository; name:pcchar; email:pcchar):cint;cdecl;external External_library name 'git_repository_set_ident';
function git_annotated_commit_from_ref(var out:Pgit_annotated_commit; var repo:git_repository; var ref:git_reference):cint;cdecl;external External_library name 'git_annotated_commit_from_ref';
function git_annotated_commit_from_fetchhead(var out:Pgit_annotated_commit; var repo:git_repository; branch_name:pcchar; remote_url:pcchar; var id:git_oid):cint;cdecl;external External_library name 'git_annotated_commit_from_fetchhead';
function git_annotated_commit_lookup(var out:Pgit_annotated_commit; var repo:git_repository; var id:git_oid):cint;cdecl;external External_library name 'git_annotated_commit_lookup';
function git_annotated_commit_from_revspec(var out:Pgit_annotated_commit; var repo:git_repository; revspec:pcchar):cint;cdecl;external External_library name 'git_annotated_commit_from_revspec';
function git_annotated_commit_id(var commit:git_annotated_commit):Pgit_oid;cdecl;external External_library name 'git_annotated_commit_id';
function git_annotated_commit_ref(var commit:git_annotated_commit):pcchar;cdecl;external External_library name 'git_annotated_commit_ref';
procedure git_annotated_commit_free(var commit:git_annotated_commit);cdecl;external External_library name 'git_annotated_commit_free';
function git_object_lookup(var object:Pgit_object; var repo:git_repository; var id:git_oid; _type:git_object_t):cint;cdecl;external External_library name 'git_object_lookup';
function git_object_lookup_prefix(var object_out:Pgit_object; var repo:git_repository; var id:git_oid; len:size_t; _type:git_object_t):cint;cdecl;external External_library name 'git_object_lookup_prefix';
function git_object_lookup_bypath(var out:Pgit_object; var treeish:git_object; path:pcchar; _type:git_object_t):cint;cdecl;external External_library name 'git_object_lookup_bypath';
function git_object_id(var obj:git_object):Pgit_oid;cdecl;external External_library name 'git_object_id';
function git_object_short_id(var out:git_buf; var obj:git_object):cint;cdecl;external External_library name 'git_object_short_id';
function git_object_type(var obj:git_object):git_object_t;cdecl;external External_library name 'git_object_type';
function git_object_owner(var obj:git_object):Pgit_repository;cdecl;external External_library name 'git_object_owner';
procedure git_object_free(var object:git_object);cdecl;external External_library name 'git_object_free';
function git_object_type2string(_type:git_object_t):pcchar;cdecl;external External_library name 'git_object_type2string';
function git_object_string2type(str:pcchar):git_object_t;cdecl;external External_library name 'git_object_string2type';
function git_object_typeisloose(_type:git_object_t):cint;cdecl;external External_library name 'git_object_typeisloose';
function git_object_peel(var peeled:Pgit_object; var object:git_object; target_type:git_object_t):cint;cdecl;external External_library name 'git_object_peel';
function git_object_dup(var dest:Pgit_object; var source:git_object):cint;cdecl;external External_library name 'git_object_dup';
function git_tree_lookup(var out:Pgit_tree; var repo:git_repository; var id:git_oid):cint;cdecl;external External_library name 'git_tree_lookup';
function git_tree_lookup_prefix(var out:Pgit_tree; var repo:git_repository; var id:git_oid; len:size_t):cint;cdecl;external External_library name 'git_tree_lookup_prefix';
procedure git_tree_free(var tree:git_tree);cdecl;external External_library name 'git_tree_free';
function git_tree_id(var tree:git_tree):Pgit_oid;cdecl;external External_library name 'git_tree_id';
function git_tree_owner(var tree:git_tree):Pgit_repository;cdecl;external External_library name 'git_tree_owner';
function git_tree_entrycount(var tree:git_tree):size_t;cdecl;external External_library name 'git_tree_entrycount';
function git_tree_entry_byname(var tree:git_tree; filename:pcchar):Pgit_tree_entry;cdecl;external External_library name 'git_tree_entry_byname';
function git_tree_entry_byindex(var tree:git_tree; idx:size_t):Pgit_tree_entry;cdecl;external External_library name 'git_tree_entry_byindex';
function git_tree_entry_byid(var tree:git_tree; var id:git_oid):Pgit_tree_entry;cdecl;external External_library name 'git_tree_entry_byid';
function git_tree_entry_bypath(var out:Pgit_tree_entry; var root:git_tree; path:pcchar):cint;cdecl;external External_library name 'git_tree_entry_bypath';
function git_tree_entry_dup(var dest:Pgit_tree_entry; var source:git_tree_entry):cint;cdecl;external External_library name 'git_tree_entry_dup';
procedure git_tree_entry_free(var entry:git_tree_entry);cdecl;external External_library name 'git_tree_entry_free';
function git_tree_entry_name(var entry:git_tree_entry):pcchar;cdecl;external External_library name 'git_tree_entry_name';
function git_tree_entry_id(var entry:git_tree_entry):Pgit_oid;cdecl;external External_library name 'git_tree_entry_id';
function git_tree_entry_type(var entry:git_tree_entry):git_object_t;cdecl;external External_library name 'git_tree_entry_type';
function git_tree_entry_filemode(var entry:git_tree_entry):git_filemode_t;cdecl;external External_library name 'git_tree_entry_filemode';
function git_tree_entry_filemode_raw(var entry:git_tree_entry):git_filemode_t;cdecl;external External_library name 'git_tree_entry_filemode_raw';
function git_tree_entry_cmp(var e1:git_tree_entry; var e2:git_tree_entry):cint;cdecl;external External_library name 'git_tree_entry_cmp';
function git_tree_entry_to_object(var object_out:Pgit_object; var repo:git_repository; var entry:git_tree_entry):cint;cdecl;external External_library name 'git_tree_entry_to_object';
function git_treebuilder_new(var out:Pgit_treebuilder; var repo:git_repository; var source:git_tree):cint;cdecl;external External_library name 'git_treebuilder_new';
function git_treebuilder_clear(var bld:git_treebuilder):cint;cdecl;external External_library name 'git_treebuilder_clear';
function git_treebuilder_entrycount(var bld:git_treebuilder):size_t;cdecl;external External_library name 'git_treebuilder_entrycount';
procedure git_treebuilder_free(var bld:git_treebuilder);cdecl;external External_library name 'git_treebuilder_free';
function git_treebuilder_get(var bld:git_treebuilder; filename:pcchar):Pgit_tree_entry;cdecl;external External_library name 'git_treebuilder_get';
function git_treebuilder_insert(var out:Pgit_tree_entry; var bld:git_treebuilder; filename:pcchar; var id:git_oid; filemode:git_filemode_t):cint;cdecl;external External_library name 'git_treebuilder_insert';
function git_treebuilder_remove(var bld:git_treebuilder; filename:pcchar):cint;cdecl;external External_library name 'git_treebuilder_remove';
type

  git_treebuilder_filter_cb = function (var entry:git_tree_entry; payload:pointer):cint;cdecl;

function git_treebuilder_filter(var bld:git_treebuilder; filter:git_treebuilder_filter_cb; payload:pointer):cint;cdecl;external External_library name 'git_treebuilder_filter';
function git_treebuilder_write(var id:git_oid; var bld:git_treebuilder):cint;cdecl;external External_library name 'git_treebuilder_write';
function git_treebuilder_write_with_buffer(var oid:git_oid; var bld:git_treebuilder; var tree:git_buf):cint;cdecl;external External_library name 'git_treebuilder_write_with_buffer';
type

  git_treewalk_cb = function (root:pcchar; var entry:git_tree_entry; payload:pointer):cint;cdecl;

  git_treewalk_mode =  Longint;
  Const
    GIT_TREEWALK_PRE = 0;
    GIT_TREEWALK_POST = 1;


function git_tree_walk(var tree:git_tree; mode:git_treewalk_mode; callback:git_treewalk_cb; payload:pointer):cint;cdecl;external External_library name 'git_tree_walk';
function git_tree_dup(var out:Pgit_tree; var source:git_tree):cint;cdecl;external External_library name 'git_tree_dup';
type
  git_tree_update_t =  Longint;
  Const
    GIT_TREE_UPDATE_UPSERT = 0;
    GIT_TREE_UPDATE_REMOVE = 1;

type
  git_tree_update = record
      action : git_tree_update_t;
      id : git_oid;
      filemode : git_filemode_t;
      path : pcchar;
    end;

function git_tree_create_updated(var out:git_oid; var repo:git_repository; var baseline:git_tree; nupdates:size_t; var updates:git_tree_update):cint;cdecl;external External_library name 'git_tree_create_updated';
type
  git_strarray = record
      strings : ^pcchar;
      count : size_t;
    end;

procedure git_strarray_dispose(var array:git_strarray);cdecl;external External_library name 'git_strarray_dispose';
function git_strarray_copy(var tgt:git_strarray; var src:git_strarray):cint;cdecl;external External_library name 'git_strarray_copy';
function git_reference_lookup(var out:Pgit_reference; var repo:git_repository; name:pcchar):cint;cdecl;external External_library name 'git_reference_lookup';
function git_reference_name_to_id(var out:git_oid; var repo:git_repository; name:pcchar):cint;cdecl;external External_library name 'git_reference_name_to_id';
function git_reference_dwim(var out:Pgit_reference; var repo:git_repository; shorthand:pcchar):cint;cdecl;external External_library name 'git_reference_dwim';
function git_reference_symbolic_create_matching(var out:Pgit_reference; var repo:git_repository; name:pcchar; target:pcchar; force:cint; 
           current_value:pcchar; log_message:pcchar):cint;cdecl;external External_library name 'git_reference_symbolic_create_matching';
function git_reference_symbolic_create(var out:Pgit_reference; var repo:git_repository; name:pcchar; target:pcchar; force:cint; 
           log_message:pcchar):cint;cdecl;external External_library name 'git_reference_symbolic_create';
function git_reference_create(var out:Pgit_reference; var repo:git_repository; name:pcchar; var id:git_oid; force:cint; 
           log_message:pcchar):cint;cdecl;external External_library name 'git_reference_create';
function git_reference_create_matching(var out:Pgit_reference; var repo:git_repository; name:pcchar; var id:git_oid; force:cint; 
           var current_id:git_oid; log_message:pcchar):cint;cdecl;external External_library name 'git_reference_create_matching';
function git_reference_target(var ref:git_reference):Pgit_oid;cdecl;external External_library name 'git_reference_target';
function git_reference_target_peel(var ref:git_reference):Pgit_oid;cdecl;external External_library name 'git_reference_target_peel';
function git_reference_symbolic_target(var ref:git_reference):pcchar;cdecl;external External_library name 'git_reference_symbolic_target';
function git_reference_type(var ref:git_reference):git_reference_t;cdecl;external External_library name 'git_reference_type';
function git_reference_name(var ref:git_reference):pcchar;cdecl;external External_library name 'git_reference_name';
function git_reference_resolve(var out:Pgit_reference; var ref:git_reference):cint;cdecl;external External_library name 'git_reference_resolve';
function git_reference_owner(var ref:git_reference):Pgit_repository;cdecl;external External_library name 'git_reference_owner';
function git_reference_symbolic_set_target(var out:Pgit_reference; var ref:git_reference; target:pcchar; log_message:pcchar):cint;cdecl;external External_library name 'git_reference_symbolic_set_target';
function git_reference_set_target(var out:Pgit_reference; var ref:git_reference; var id:git_oid; log_message:pcchar):cint;cdecl;external External_library name 'git_reference_set_target';
function git_reference_rename(var new_ref:Pgit_reference; var ref:git_reference; new_name:pcchar; force:cint; log_message:pcchar):cint;cdecl;external External_library name 'git_reference_rename';
function git_reference_delete(var ref:git_reference):cint;cdecl;external External_library name 'git_reference_delete';
function git_reference_remove(var repo:git_repository; name:pcchar):cint;cdecl;external External_library name 'git_reference_remove';
function git_reference_list(var array:git_strarray; var repo:git_repository):cint;cdecl;external External_library name 'git_reference_list';
type

  git_reference_foreach_cb = function (var reference:git_reference; payload:pointer):cint;cdecl;

  git_reference_foreach_name_cb = function (name:pcchar; payload:pointer):cint;cdecl;

function git_reference_foreach(var repo:git_repository; callback:git_reference_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_reference_foreach';
function git_reference_foreach_name(var repo:git_repository; callback:git_reference_foreach_name_cb; payload:pointer):cint;cdecl;external External_library name 'git_reference_foreach_name';
function git_reference_dup(var dest:Pgit_reference; var source:git_reference):cint;cdecl;external External_library name 'git_reference_dup';
procedure git_reference_free(var ref:git_reference);cdecl;external External_library name 'git_reference_free';
function git_reference_cmp(var ref1:git_reference; var ref2:git_reference):cint;cdecl;external External_library name 'git_reference_cmp';
function git_reference_iterator_new(var out:Pgit_reference_iterator; var repo:git_repository):cint;cdecl;external External_library name 'git_reference_iterator_new';
function git_reference_iterator_glob_new(var out:Pgit_reference_iterator; var repo:git_repository; glob:pcchar):cint;cdecl;external External_library name 'git_reference_iterator_glob_new';
function git_reference_next(var out:Pgit_reference; var iter:git_reference_iterator):cint;cdecl;external External_library name 'git_reference_next';
function git_reference_next_name(out:Ppcchar; var iter:git_reference_iterator):cint;cdecl;external External_library name 'git_reference_next_name';
procedure git_reference_iterator_free(var iter:git_reference_iterator);cdecl;external External_library name 'git_reference_iterator_free';
function git_reference_foreach_glob(var repo:git_repository; glob:pcchar; callback:git_reference_foreach_name_cb; payload:pointer):cint;cdecl;external External_library name 'git_reference_foreach_glob';
function git_reference_has_log(var repo:git_repository; refname:pcchar):cint;cdecl;external External_library name 'git_reference_has_log';
function git_reference_ensure_log(var repo:git_repository; refname:pcchar):cint;cdecl;external External_library name 'git_reference_ensure_log';
function git_reference_is_branch(var ref:git_reference):cint;cdecl;external External_library name 'git_reference_is_branch';
function git_reference_is_remote(var ref:git_reference):cint;cdecl;external External_library name 'git_reference_is_remote';
function git_reference_is_tag(var ref:git_reference):cint;cdecl;external External_library name 'git_reference_is_tag';
function git_reference_is_note(var ref:git_reference):cint;cdecl;external External_library name 'git_reference_is_note';
type
  git_reference_format_t =  Longint;
  Const
    GIT_REFERENCE_FORMAT_NORMAL = 0;
    GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL = 1 shl 0;
    GIT_REFERENCE_FORMAT_REFSPEC_PATTERN = 1 shl 1;
    GIT_REFERENCE_FORMAT_REFSPEC_SHORTHAND = 1 shl 2;


function git_reference_normalize_name(buffer_out:pcchar; buffer_size:size_t; name:pcchar; flags:cuint):cint;cdecl;external External_library name 'git_reference_normalize_name';
function git_reference_peel(var out:Pgit_object; var ref:git_reference; _type:git_object_t):cint;cdecl;external External_library name 'git_reference_peel';
function git_reference_is_valid_name(refname:pcchar):cint;cdecl;external External_library name 'git_reference_is_valid_name';
function git_reference_shorthand(var ref:git_reference):pcchar;cdecl;external External_library name 'git_reference_shorthand';
type
  git_diff_option_t =  Longint;
  Const
    GIT_DIFF_NORMAL = 0;
    GIT_DIFF_REVERSE = 1 shl 0;
    GIT_DIFF_INCLUDE_IGNORED = 1 shl 1;
    GIT_DIFF_RECURSE_IGNORED_DIRS = 1 shl 2;
    GIT_DIFF_INCLUDE_UNTRACKED = 1 shl 3;
    GIT_DIFF_RECURSE_UNTRACKED_DIRS = 1 shl 4;
    GIT_DIFF_INCLUDE_UNMODIFIED = 1 shl 5;
    GIT_DIFF_INCLUDE_TYPECHANGE = 1 shl 6;
    GIT_DIFF_INCLUDE_TYPECHANGE_TREES = 1 shl 7;
    GIT_DIFF_IGNORE_FILEMODE = 1 shl 8;
    GIT_DIFF_IGNORE_SUBMODULES = 1 shl 9;
    GIT_DIFF_IGNORE_CASE = 1 shl 10;
    GIT_DIFF_INCLUDE_CASECHANGE = 1 shl 11;
    GIT_DIFF_DISABLE_PATHSPEC_MATCH = 1 shl 12;
    GIT_DIFF_SKIP_BINARY_CHECK = 1 shl 13;
    GIT_DIFF_ENABLE_FAST_UNTRACKED_DIRS = 1 shl 14;
    GIT_DIFF_UPDATE_INDEX = 1 shl 15;
    GIT_DIFF_INCLUDE_UNREADABLE = 1 shl 16;
    GIT_DIFF_INCLUDE_UNREADABLE_AS_UNTRACKED = 1 shl 17;
    GIT_DIFF_INDENT_HEURISTIC = 1 shl 18;
    GIT_DIFF_FORCE_TEXT = 1 shl 20;
    GIT_DIFF_FORCE_BINARY = 1 shl 21;
    GIT_DIFF_IGNORE_WHITESPACE = 1 shl 22;
    GIT_DIFF_IGNORE_WHITESPACE_CHANGE = 1 shl 23;
    GIT_DIFF_IGNORE_WHITESPACE_EOL = 1 shl 24;
    GIT_DIFF_SHOW_UNTRACKED_CONTENT = 1 shl 25;
    GIT_DIFF_SHOW_UNMODIFIED = 1 shl 26;
    GIT_DIFF_PATIENCE = 1 shl 28;
    GIT_DIFF_MINIMAL = 1 shl 29;
    GIT_DIFF_SHOW_BINARY = 1 shl 30;

type

  git_diff_flag_t =  Longint;
  Const
    GIT_DIFF_FLAG_BINARY = 1 shl 0;
    GIT_DIFF_FLAG_NOT_BINARY = 1 shl 1;
    GIT_DIFF_FLAG_VALID_ID = 1 shl 2;
    GIT_DIFF_FLAG_EXISTS = 1 shl 3;

type
  git_delta_t =  Longint;
  Const
    GIT_DELTA_UNMODIFIED = 0;
    GIT_DELTA_ADDED = 1;
    GIT_DELTA_DELETED = 2;
    GIT_DELTA_MODIFIED = 3;
    GIT_DELTA_RENAMED = 4;
    GIT_DELTA_COPIED = 5;
    GIT_DELTA_IGNORED = 6;
    GIT_DELTA_UNTRACKED = 7;
    GIT_DELTA_TYPECHANGE = 8;
    GIT_DELTA_UNREADABLE = 9;
    GIT_DELTA_CONFLICTED = 10;

type
  git_diff_file = record
      id : git_oid;
      path : pcchar;
      size : git_object_size_t;
      flags : uint32_t;
      mode : uint16_t;
      id_abbrev : uint16_t;
    end;
  TFunctionOutPpointerVarFileGit_diff_fileBufPccharBuflenSize_tPayloadPointerCint = function (out:Ppointer; var file:git_diff_file; buf:pcchar; buflen:size_t; payload:pointer):cint;
  TFunctionOutPpointerVarFileGit_diff_fileFullpathPccharPayloadPointerCint = function (out:Ppointer; var file:git_diff_file; fullpath:pcchar; payload:pointer):cint;

  git_diff_delta = record
      status : git_delta_t;
      flags : uint32_t;
      similarity : uint16_t;
      nfiles : uint16_t;
      old_file : git_diff_file;
      new_file : git_diff_file;
    end;

  git_diff_notify_cb = function (var diff_so_far:git_diff; var delta_to_add:git_diff_delta; matched_pathspec:pcchar; payload:pointer):cint;cdecl;

  git_diff_progress_cb = function (var diff_so_far:git_diff; old_path:pcchar; new_path:pcchar; payload:pointer):cint;cdecl;

  git_diff_options = record
      version : cuint;
      flags : uint32_t;
      ignore_submodules : git_submodule_ignore_t;
      pathspec : git_strarray;
      notify_cb : git_diff_notify_cb;
      progress_cb : git_diff_progress_cb;
      payload : pointer;
      context_lines : uint32_t;
      interhunk_lines : uint32_t;
      id_abbrev : uint16_t;
      max_size : git_off_t;
      old_prefix : pcchar;
      new_prefix : pcchar;
    end;

function git_diff_options_init(var opts:git_diff_options; version:cuint):cint;cdecl;external External_library name 'git_diff_options_init';
type

  git_diff_file_cb = function (var delta:git_diff_delta; progress:cfloat; payload:pointer):cint;cdecl;

  git_diff_binary_t =  Longint;
  Const
    GIT_DIFF_BINARY_NONE = 0;
    GIT_DIFF_BINARY_LITERAL = 1;
    GIT_DIFF_BINARY_DELTA = 2;

type
  git_diff_binary_file = record
      _type : git_diff_binary_t;
      data : pcchar;
      datalen : size_t;
      inflatedlen : size_t;
    end;

  git_diff_binary = record
      contains_data : cuint;
      old_file : git_diff_binary_file;
      new_file : git_diff_binary_file;
    end;

  git_diff_binary_cb = function (var delta:git_diff_delta; var binary:git_diff_binary; payload:pointer):cint;cdecl;

  git_diff_hunk = record
      old_start : cint;
      old_lines : cint;
      new_start : cint;
      new_lines : cint;
      header_len : size_t;
      header : TArray0to127OfCchar;
    end;

  git_diff_hunk_cb = function (var delta:git_diff_delta; var hunk:git_diff_hunk; payload:pointer):cint;cdecl;

  git_diff_line_t =  Longint;
  Const
    GIT_DIFF_LINE_CONTEXT = ' ';
    GIT_DIFF_LINE_ADDITION = '+';
    GIT_DIFF_LINE_DELETION = '-';
    GIT_DIFF_LINE_CONTEXT_EOFNL = '=';
    GIT_DIFF_LINE_ADD_EOFNL = '>';
    GIT_DIFF_LINE_DEL_EOFNL = '<';
    GIT_DIFF_LINE_FILE_HDR = 'F';
    GIT_DIFF_LINE_HUNK_HDR = 'H';
    GIT_DIFF_LINE_BINARY = 'B';

type
  git_diff_line = record
      origin : cchar;
      old_lineno : cint;
      new_lineno : cint;
      num_lines : cint;
      content_len : size_t;
      content_offset : git_off_t;
      content : pcchar;
    end;

  git_diff_line_cb = function (var delta:git_diff_delta; var hunk:git_diff_hunk; var line:git_diff_line; payload:pointer):cint;cdecl;

  git_diff_find_t =  Longint;
  Const
    GIT_DIFF_FIND_BY_CONFIG = 0;
    GIT_DIFF_FIND_RENAMES = 1 shl 0;
    GIT_DIFF_FIND_RENAMES_FROM_REWRITES = 1 shl 1;
    GIT_DIFF_FIND_COPIES = 1 shl 2;
    GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED = 1 shl 3;
    GIT_DIFF_FIND_REWRITES = 1 shl 4;
    GIT_DIFF_BREAK_REWRITES = 1 shl 5;
    GIT_DIFF_FIND_AND_BREAK_REWRITES = GIT_DIFF_FIND_REWRITES or GIT_DIFF_BREAK_REWRITES;
    GIT_DIFF_FIND_FOR_UNTRACKED = 1 shl 6;
    GIT_DIFF_FIND_ALL = $0ff;
    GIT_DIFF_FIND_IGNORE_LEADING_WHITESPACE = 0;
    GIT_DIFF_FIND_IGNORE_WHITESPACE = 1 shl 12;
    GIT_DIFF_FIND_DONT_IGNORE_WHITESPACE = 1 shl 13;
    GIT_DIFF_FIND_EXACT_MATCH_ONLY = 1 shl 14;
    GIT_DIFF_BREAK_REWRITES_FOR_RENAMES_ONLY = 1 shl 15;
    GIT_DIFF_FIND_REMOVE_UNMODIFIED = 1 shl 16;

type
  git_diff_similarity_metric = record
      file_signature : TFunctionOutPpointerVarFileGit_diff_fileFullpathPccharPayloadPointerCint;cdecl;
      buffer_signature : TFunctionOutPpointerVarFileGit_diff_fileBufPccharBuflenSize_tPayloadPointerCint;cdecl;
      free_signature : TProcedureSigPointerPayloadPointer;cdecl;
      similarity : TFunctionVarScoreCintSigaPointerSigbPointerPayloadPointerCint;cdecl;
      payload : pointer;
    end;

  git_diff_find_options = record
      version : cuint;
      flags : uint32_t;
      rename_threshold : uint16_t;
      rename_from_rewrite_threshold : uint16_t;
      copy_threshold : uint16_t;
      break_rewrite_threshold : uint16_t;
      rename_limit : size_t;
      metric : Pgit_diff_similarity_metric;
    end;

function git_diff_find_options_init(var opts:git_diff_find_options; version:cuint):cint;cdecl;external External_library name 'git_diff_find_options_init';
procedure git_diff_free(var diff:git_diff);cdecl;external External_library name 'git_diff_free';
function git_diff_tree_to_tree(var diff:Pgit_diff; var repo:git_repository; var old_tree:git_tree; var new_tree:git_tree; var opts:git_diff_options):cint;cdecl;external External_library name 'git_diff_tree_to_tree';
function git_diff_tree_to_index(var diff:Pgit_diff; var repo:git_repository; var old_tree:git_tree; var index:git_index; var opts:git_diff_options):cint;cdecl;external External_library name 'git_diff_tree_to_index';
function git_diff_index_to_workdir(var diff:Pgit_diff; var repo:git_repository; var index:git_index; var opts:git_diff_options):cint;cdecl;external External_library name 'git_diff_index_to_workdir';
function git_diff_tree_to_workdir(var diff:Pgit_diff; var repo:git_repository; var old_tree:git_tree; var opts:git_diff_options):cint;cdecl;external External_library name 'git_diff_tree_to_workdir';
function git_diff_tree_to_workdir_with_index(var diff:Pgit_diff; var repo:git_repository; var old_tree:git_tree; var opts:git_diff_options):cint;cdecl;external External_library name 'git_diff_tree_to_workdir_with_index';
function git_diff_index_to_index(var diff:Pgit_diff; var repo:git_repository; var old_index:git_index; var new_index:git_index; var opts:git_diff_options):cint;cdecl;external External_library name 'git_diff_index_to_index';
function git_diff_merge(var onto:git_diff; var from:git_diff):cint;cdecl;external External_library name 'git_diff_merge';
function git_diff_find_similar(var diff:git_diff; var options:git_diff_find_options):cint;cdecl;external External_library name 'git_diff_find_similar';
function git_diff_num_deltas(var diff:git_diff):size_t;cdecl;external External_library name 'git_diff_num_deltas';
function git_diff_num_deltas_of_type(var diff:git_diff; _type:git_delta_t):size_t;cdecl;external External_library name 'git_diff_num_deltas_of_type';
function git_diff_get_delta(var diff:git_diff; idx:size_t):Pgit_diff_delta;cdecl;external External_library name 'git_diff_get_delta';
function git_diff_is_sorted_icase(var diff:git_diff):cint;cdecl;external External_library name 'git_diff_is_sorted_icase';
function git_diff_foreach(var diff:git_diff; file_cb:git_diff_file_cb; binary_cb:git_diff_binary_cb; hunk_cb:git_diff_hunk_cb; line_cb:git_diff_line_cb; 
           payload:pointer):cint;cdecl;external External_library name 'git_diff_foreach';
function git_diff_status_char(status:git_delta_t):cchar;cdecl;external External_library name 'git_diff_status_char';
type
  git_diff_format_t =  Longint;
  Const
    GIT_DIFF_FORMAT_PATCH = 1;
    GIT_DIFF_FORMAT_PATCH_HEADER = 2;
    GIT_DIFF_FORMAT_RAW = 3;
    GIT_DIFF_FORMAT_NAME_ONLY = 4;
    GIT_DIFF_FORMAT_NAME_STATUS = 5;
    GIT_DIFF_FORMAT_PATCH_ID = 6;


function git_diff_print(var diff:git_diff; format:git_diff_format_t; print_cb:git_diff_line_cb; payload:pointer):cint;cdecl;external External_library name 'git_diff_print';
function git_diff_to_buf(var out:git_buf; var diff:git_diff; format:git_diff_format_t):cint;cdecl;external External_library name 'git_diff_to_buf';
function git_diff_blobs(var old_blob:git_blob; old_as_path:pcchar; var new_blob:git_blob; new_as_path:pcchar; var options:git_diff_options; 
           file_cb:git_diff_file_cb; binary_cb:git_diff_binary_cb; hunk_cb:git_diff_hunk_cb; line_cb:git_diff_line_cb; payload:pointer):cint;cdecl;external External_library name 'git_diff_blobs';
function git_diff_blob_to_buffer(var old_blob:git_blob; old_as_path:pcchar; buffer:pcchar; buffer_len:size_t; buffer_as_path:pcchar; 
           var options:git_diff_options; file_cb:git_diff_file_cb; binary_cb:git_diff_binary_cb; hunk_cb:git_diff_hunk_cb; line_cb:git_diff_line_cb; 
           payload:pointer):cint;cdecl;external External_library name 'git_diff_blob_to_buffer';
function git_diff_buffers(old_buffer:pointer; old_len:size_t; old_as_path:pcchar; new_buffer:pointer; new_len:size_t; 
           new_as_path:pcchar; var options:git_diff_options; file_cb:git_diff_file_cb; binary_cb:git_diff_binary_cb; hunk_cb:git_diff_hunk_cb; 
           line_cb:git_diff_line_cb; payload:pointer):cint;cdecl;external External_library name 'git_diff_buffers';
function git_diff_from_buffer(var out:Pgit_diff; content:pcchar; content_len:size_t):cint;cdecl;external External_library name 'git_diff_from_buffer';
type

  git_diff_stats_format_t =  Longint;
  Const
    GIT_DIFF_STATS_NONE = 0;
    GIT_DIFF_STATS_FULL = 1 shl 0;
    GIT_DIFF_STATS_SHORT = 1 shl 1;
    GIT_DIFF_STATS_NUMBER = 1 shl 2;
    GIT_DIFF_STATS_INCLUDE_SUMMARY = 1 shl 3;


function git_diff_get_stats(var out:Pgit_diff_stats; var diff:git_diff):cint;cdecl;external External_library name 'git_diff_get_stats';
function git_diff_stats_files_changed(var stats:git_diff_stats):size_t;cdecl;external External_library name 'git_diff_stats_files_changed';
function git_diff_stats_insertions(var stats:git_diff_stats):size_t;cdecl;external External_library name 'git_diff_stats_insertions';
function git_diff_stats_deletions(var stats:git_diff_stats):size_t;cdecl;external External_library name 'git_diff_stats_deletions';
function git_diff_stats_to_buf(var out:git_buf; var stats:git_diff_stats; format:git_diff_stats_format_t; width:size_t):cint;cdecl;external External_library name 'git_diff_stats_to_buf';
procedure git_diff_stats_free(var stats:git_diff_stats);cdecl;external External_library name 'git_diff_stats_free';
type
  git_diff_format_email_flags_t =  Longint;
  Const
    GIT_DIFF_FORMAT_EMAIL_NONE = 0;
    GIT_DIFF_FORMAT_EMAIL_EXCLUDE_SUBJECT_PATCH_MARKER = 1 shl 0;

type
  git_diff_format_email_options = record
      version : cuint;
      flags : uint32_t;
      patch_no : size_t;
      total_patches : size_t;
      id : Pgit_oid;
      summary : pcchar;
      body : pcchar;
      author : Pgit_signature;
    end;

function git_diff_format_email(var out:git_buf; var diff:git_diff; var opts:git_diff_format_email_options):cint;cdecl;external External_library name 'git_diff_format_email';
function git_diff_commit_as_email(var out:git_buf; var repo:git_repository; var commit:git_commit; patch_no:size_t; total_patches:size_t; 
           flags:uint32_t; var diff_opts:git_diff_options):cint;cdecl;external External_library name 'git_diff_commit_as_email';
function git_diff_format_email_options_init(var opts:git_diff_format_email_options; version:cuint):cint;cdecl;external External_library name 'git_diff_format_email_options_init';
type
  git_diff_patchid_options = record
      version : cuint;
    end;

function git_diff_patchid_options_init(var opts:git_diff_patchid_options; version:cuint):cint;cdecl;external External_library name 'git_diff_patchid_options_init';
function git_diff_patchid(var out:git_oid; var diff:git_diff; var opts:git_diff_patchid_options):cint;cdecl;external External_library name 'git_diff_patchid';
type

  git_apply_delta_cb = function (var delta:git_diff_delta; payload:pointer):cint;cdecl;

  git_apply_hunk_cb = function (var hunk:git_diff_hunk; payload:pointer):cint;cdecl;

  git_apply_flags_t =  Longint;
  Const
    GIT_APPLY_CHECK = 1 shl 0;

type
  git_apply_options = record
      version : cuint;
      delta_cb : git_apply_delta_cb;
      hunk_cb : git_apply_hunk_cb;
      payload : pointer;
      flags : cuint;
    end;

function git_apply_options_init(var opts:git_apply_options; version:cuint):cint;cdecl;external External_library name 'git_apply_options_init';
function git_apply_to_tree(var out:Pgit_index; var repo:git_repository; var preimage:git_tree; var diff:git_diff; var options:git_apply_options):cint;cdecl;external External_library name 'git_apply_to_tree';
type
  git_apply_location_t =  Longint;
  Const
    GIT_APPLY_LOCATION_WORKDIR = 0;
    GIT_APPLY_LOCATION_INDEX = 1;
    GIT_APPLY_LOCATION_BOTH = 2;


function git_apply(var repo:git_repository; var diff:git_diff; location:git_apply_location_t; var options:git_apply_options):cint;cdecl;external External_library name 'git_apply';
type
  git_attr_value_t =  Longint;
  Const
    GIT_ATTR_VALUE_UNSPECIFIED = 0;
    GIT_ATTR_VALUE_TRUE = 1;
    GIT_ATTR_VALUE_FALSE = 2;
    GIT_ATTR_VALUE_STRING = 3;


function git_attr_value(attr:pcchar):git_attr_value_t;cdecl;external External_library name 'git_attr_value';
function git_attr_get(value_out:Ppcchar; var repo:git_repository; flags:uint32_t; path:pcchar; name:pcchar):cint;cdecl;external External_library name 'git_attr_get';
function git_attr_get_many(values_out:Ppcchar; var repo:git_repository; flags:uint32_t; path:pcchar; num_attr:size_t; 
           names:Ppcchar):cint;cdecl;external External_library name 'git_attr_get_many';
type

  git_attr_foreach_cb = function (name:pcchar; value:pcchar; payload:pointer):cint;cdecl;

function git_attr_foreach(var repo:git_repository; flags:uint32_t; path:pcchar; callback:git_attr_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_attr_foreach';
function git_attr_cache_flush(var repo:git_repository):cint;cdecl;external External_library name 'git_attr_cache_flush';
function git_attr_add_macro(var repo:git_repository; name:pcchar; values:pcchar):cint;cdecl;external External_library name 'git_attr_add_macro';
function git_blob_lookup(var blob:Pgit_blob; var repo:git_repository; var id:git_oid):cint;cdecl;external External_library name 'git_blob_lookup';
function git_blob_lookup_prefix(var blob:Pgit_blob; var repo:git_repository; var id:git_oid; len:size_t):cint;cdecl;external External_library name 'git_blob_lookup_prefix';
procedure git_blob_free(var blob:git_blob);cdecl;external External_library name 'git_blob_free';
function git_blob_id(var blob:git_blob):Pgit_oid;cdecl;external External_library name 'git_blob_id';
function git_blob_owner(var blob:git_blob):Pgit_repository;cdecl;external External_library name 'git_blob_owner';
function git_blob_rawcontent(var blob:git_blob):pointer;cdecl;external External_library name 'git_blob_rawcontent';
function git_blob_rawsize(var blob:git_blob):git_object_size_t;cdecl;external External_library name 'git_blob_rawsize';
type
  git_blob_filter_flag_t =  Longint;
  Const
    GIT_BLOB_FILTER_CHECK_FOR_BINARY = 1 shl 0;
    GIT_BLOB_FILTER_NO_SYSTEM_ATTRIBUTES = 1 shl 1;
    GIT_BLOB_FILTER_ATTTRIBUTES_FROM_HEAD = 1 shl 2;

type
  git_blob_filter_options = record
      version : cint;
      flags : uint32_t;
    end;

function git_blob_filter(var out:git_buf; var blob:git_blob; as_path:pcchar; var opts:git_blob_filter_options):cint;cdecl;external External_library name 'git_blob_filter';
function git_blob_create_from_workdir(var id:git_oid; var repo:git_repository; relative_path:pcchar):cint;cdecl;external External_library name 'git_blob_create_from_workdir';
function git_blob_create_from_disk(var id:git_oid; var repo:git_repository; path:pcchar):cint;cdecl;external External_library name 'git_blob_create_from_disk';
function git_blob_create_from_stream(var out:Pgit_writestream; var repo:git_repository; hintpath:pcchar):cint;cdecl;external External_library name 'git_blob_create_from_stream';
function git_blob_create_from_stream_commit(var out:git_oid; var stream:git_writestream):cint;cdecl;external External_library name 'git_blob_create_from_stream_commit';
function git_blob_create_from_buffer(var id:git_oid; var repo:git_repository; buffer:pointer; len:size_t):cint;cdecl;external External_library name 'git_blob_create_from_buffer';
function git_blob_is_binary(var blob:git_blob):cint;cdecl;external External_library name 'git_blob_is_binary';
function git_blob_dup(var out:Pgit_blob; var source:git_blob):cint;cdecl;external External_library name 'git_blob_dup';
type
  git_blame_flag_t =  Longint;
  Const
    GIT_BLAME_NORMAL = 0;
    GIT_BLAME_TRACK_COPIES_SAME_FILE = 1 shl 0;
    GIT_BLAME_TRACK_COPIES_SAME_COMMIT_MOVES = 1 shl 1;
    GIT_BLAME_TRACK_COPIES_SAME_COMMIT_COPIES = 1 shl 2;
    GIT_BLAME_TRACK_COPIES_ANY_COMMIT_COPIES = 1 shl 3;
    GIT_BLAME_FIRST_PARENT = 1 shl 4;
    GIT_BLAME_USE_MAILMAP = 1 shl 5;
    GIT_BLAME_IGNORE_WHITESPACE = 1 shl 6;

type
  git_blame_options = record
      version : cuint;
      flags : uint32_t;
      min_match_characters : uint16_t;
      newest_commit : git_oid;
      oldest_commit : git_oid;
      min_line : size_t;
      max_line : size_t;
    end;

function git_blame_options_init(var opts:git_blame_options; version:cuint):cint;cdecl;external External_library name 'git_blame_options_init';
type
  git_blame_hunk = record
      lines_in_hunk : size_t;
      final_commit_id : git_oid;
      final_start_line_number : size_t;
      final_signature : Pgit_signature;
      orig_commit_id : git_oid;
      orig_path : pcchar;
      orig_start_line_number : size_t;
      orig_signature : Pgit_signature;
      boundary : cchar;
    end;

function git_blame_get_hunk_count(var blame:git_blame):uint32_t;cdecl;external External_library name 'git_blame_get_hunk_count';
function git_blame_get_hunk_byindex(var blame:git_blame; index:uint32_t):Pgit_blame_hunk;cdecl;external External_library name 'git_blame_get_hunk_byindex';
function git_blame_get_hunk_byline(var blame:git_blame; lineno:size_t):Pgit_blame_hunk;cdecl;external External_library name 'git_blame_get_hunk_byline';
function git_blame_file(var out:Pgit_blame; var repo:git_repository; path:pcchar; var options:git_blame_options):cint;cdecl;external External_library name 'git_blame_file';
function git_blame_buffer(var out:Pgit_blame; var reference:git_blame; buffer:pcchar; buffer_len:size_t):cint;cdecl;external External_library name 'git_blame_buffer';
procedure git_blame_free(var blame:git_blame);cdecl;external External_library name 'git_blame_free';
function git_branch_create(var out:Pgit_reference; var repo:git_repository; branch_name:pcchar; var target:git_commit; force:cint):cint;cdecl;external External_library name 'git_branch_create';
function git_branch_create_from_annotated(var ref_out:Pgit_reference; var repository:git_repository; branch_name:pcchar; var commit:git_annotated_commit; force:cint):cint;cdecl;external External_library name 'git_branch_create_from_annotated';
function git_branch_delete(var branch:git_reference):cint;cdecl;external External_library name 'git_branch_delete';


function git_branch_iterator_new(var out:Pgit_branch_iterator; var repo:git_repository; list_flags:git_branch_t):cint;cdecl;external External_library name 'git_branch_iterator_new';
function git_branch_next(var out:Pgit_reference; var out_type:git_branch_t; var iter:git_branch_iterator):cint;cdecl;external External_library name 'git_branch_next';
procedure git_branch_iterator_free(var iter:git_branch_iterator);cdecl;external External_library name 'git_branch_iterator_free';
function git_branch_move(var out:Pgit_reference; var branch:git_reference; new_branch_name:pcchar; force:cint):cint;cdecl;external External_library name 'git_branch_move';
function git_branch_lookup(var out:Pgit_reference; var repo:git_repository; branch_name:pcchar; branch_type:git_branch_t):cint;cdecl;external External_library name 'git_branch_lookup';
function git_branch_name(out:Ppcchar; var ref:git_reference):cint;cdecl;external External_library name 'git_branch_name';
function git_branch_upstream(var out:Pgit_reference; var branch:git_reference):cint;cdecl;external External_library name 'git_branch_upstream';
function git_branch_set_upstream(var branch:git_reference; branch_name:pcchar):cint;cdecl;external External_library name 'git_branch_set_upstream';
function git_branch_upstream_name(var out:git_buf; var repo:git_repository; refname:pcchar):cint;cdecl;external External_library name 'git_branch_upstream_name';
function git_branch_is_head(var branch:git_reference):cint;cdecl;external External_library name 'git_branch_is_head';
function git_branch_is_checked_out(var branch:git_reference):cint;cdecl;external External_library name 'git_branch_is_checked_out';
function git_branch_remote_name(var out:git_buf; var repo:git_repository; refname:pcchar):cint;cdecl;external External_library name 'git_branch_remote_name';
function git_branch_upstream_remote(var buf:git_buf; var repo:git_repository; refname:pcchar):cint;cdecl;external External_library name 'git_branch_upstream_remote';
type
  git_cert_t =  Longint;
  Const
    GIT_CERT_NONE = 0;
    GIT_CERT_X509 = 1;
    GIT_CERT_HOSTKEY_LIBSSH2 = 2;
    GIT_CERT_STRARRAY = 3;

type
  git_cert = record
      cert_type : git_cert_t;
    end;


  git_transport_certificate_check_cb = function (var cert:git_cert; valid:cint; host:pcchar; payload:pointer):cint;cdecl;

  git_cert_ssh_t =  Longint;
  Const
    GIT_CERT_SSH_MD5 = 1 shl 0;
    GIT_CERT_SSH_SHA1 = 1 shl 1;
    GIT_CERT_SSH_SHA256 = 1 shl 2;

type
  git_cert_hostkey = record
      parent : git_cert;
      _type : git_cert_ssh_t;
      hash_md5 : TArray0to15OfCuchar;
      hash_sha1 : TArray0to19OfCuchar;
      hash_sha256 : TArray0to31OfCuchar;
    end;

  git_cert_x509 = record
      parent : git_cert;
      data : pointer;
      len : size_t;
    end;

  git_checkout_strategy_t =  Longint;
  Const
    GIT_CHECKOUT_NONE = 0;
    GIT_CHECKOUT_SAFE = 1 shl 0;
    GIT_CHECKOUT_FORCE = 1 shl 1;
    GIT_CHECKOUT_RECREATE_MISSING = 1 shl 2;
    GIT_CHECKOUT_ALLOW_CONFLICTS = 1 shl 4;
    GIT_CHECKOUT_REMOVE_UNTRACKED = 1 shl 5;
    GIT_CHECKOUT_REMOVE_IGNORED = 1 shl 6;
    GIT_CHECKOUT_UPDATE_ONLY = 1 shl 7;
    GIT_CHECKOUT_DONT_UPDATE_INDEX = 1 shl 8;
    GIT_CHECKOUT_NO_REFRESH = 1 shl 9;
    GIT_CHECKOUT_SKIP_UNMERGED = 1 shl 10;
    GIT_CHECKOUT_USE_OURS = 1 shl 11;
    GIT_CHECKOUT_USE_THEIRS = 1 shl 12;
    GIT_CHECKOUT_DISABLE_PATHSPEC_MATCH = 1 shl 13;
    GIT_CHECKOUT_SKIP_LOCKED_DIRECTORIES = 1 shl 18;
    GIT_CHECKOUT_DONT_OVERWRITE_IGNORED = 1 shl 19;
    GIT_CHECKOUT_CONFLICT_STYLE_MERGE = 1 shl 20;
    GIT_CHECKOUT_CONFLICT_STYLE_DIFF3 = 1 shl 21;
    GIT_CHECKOUT_DONT_REMOVE_EXISTING = 1 shl 22;
    GIT_CHECKOUT_DONT_WRITE_INDEX = 1 shl 23;
    GIT_CHECKOUT_UPDATE_SUBMODULES = 1 shl 16;
    GIT_CHECKOUT_UPDATE_SUBMODULES_IF_CHANGED = 1 shl 17;

type
  git_checkout_notify_t =  Longint;
  Const
    GIT_CHECKOUT_NOTIFY_NONE = 0;
    GIT_CHECKOUT_NOTIFY_CONFLICT = 1 shl 0;
    GIT_CHECKOUT_NOTIFY_DIRTY = 1 shl 1;
    GIT_CHECKOUT_NOTIFY_UPDATED = 1 shl 2;
    GIT_CHECKOUT_NOTIFY_UNTRACKED = 1 shl 3;
    GIT_CHECKOUT_NOTIFY_IGNORED = 1 shl 4;
    GIT_CHECKOUT_NOTIFY_ALL = $0FFFF;

type
  git_checkout_perfdata = record
      mkdir_calls : size_t;
      stat_calls : size_t;
      chmod_calls : size_t;
    end;

  git_checkout_notify_cb = function (why:git_checkout_notify_t; path:pcchar; var baseline:git_diff_file; var target:git_diff_file; var workdir:git_diff_file; 
               payload:pointer):cint;cdecl;

  git_checkout_progress_cb = procedure (path:pcchar; completed_steps:size_t; total_steps:size_t; payload:pointer);cdecl;

  git_checkout_perfdata_cb = procedure (var perfdata:git_checkout_perfdata; payload:pointer);cdecl;

  git_checkout_options = record
      version : cuint;
      checkout_strategy : cuint;
      disable_filters : cint;
      dir_mode : cuint;
      file_mode : cuint;
      file_open_flags : cint;
      notify_flags : cuint;
      notify_cb : git_checkout_notify_cb;
      notify_payload : pointer;
      progress_cb : git_checkout_progress_cb;
      progress_payload : pointer;
      paths : git_strarray;
      baseline : Pgit_tree;
      baseline_index : Pgit_index;
      target_directory : pcchar;
      ancestor_label : pcchar;
      our_label : pcchar;
      their_label : pcchar;
      perfdata_cb : git_checkout_perfdata_cb;
      perfdata_payload : pointer;
    end;

function git_checkout_options_init(var opts:git_checkout_options; version:cuint):cint;cdecl;external External_library name 'git_checkout_options_init';
function git_checkout_head(var repo:git_repository; var opts:git_checkout_options):cint;cdecl;external External_library name 'git_checkout_head';
function git_checkout_index(var repo:git_repository; var index:git_index; var opts:git_checkout_options):cint;cdecl;external External_library name 'git_checkout_index';
function git_checkout_tree(var repo:git_repository; var treeish:git_object; var opts:git_checkout_options):cint;cdecl;external External_library name 'git_checkout_tree';
type
  git_oidarray = record
      ids : Pgit_oid;
      count : size_t;
    end;

procedure git_oidarray_free(var array:git_oidarray);cdecl;external External_library name 'git_oidarray_free';
type

  git_indexer_progress = record
      total_objects : cuint;
      indexed_objects : cuint;
      received_objects : cuint;
      local_objects : cuint;
      total_deltas : cuint;
      indexed_deltas : cuint;
      received_bytes : size_t;
    end;
  TFunctionVarWritepackGit_odb_writepackDataPointerSizeSize_tVarStatsGit_indexer_progressCint = function (var writepack:git_odb_writepack; data:pointer; size:size_t; var stats:git_indexer_progress):cint;
  TFunctionVarWritepackGit_odb_writepackVarStatsGit_indexer_progressCint = function (var writepack:git_odb_writepack; var stats:git_indexer_progress):cint;

  git_indexer_progress_cb = function (var stats:git_indexer_progress; payload:pointer):cint;cdecl;

  git_indexer_options = record
      version : cuint;
      progress_cb : git_indexer_progress_cb;
      progress_cb_payload : pointer;
      verify : cuchar;
    end;

function git_indexer_options_init(var opts:git_indexer_options; version:cuint):cint;cdecl;external External_library name 'git_indexer_options_init';
function git_indexer_new(var out:Pgit_indexer; path:pcchar; mode:cuint; var odb:git_odb; var opts:git_indexer_options):cint;cdecl;external External_library name 'git_indexer_new';
function git_indexer_append(var idx:git_indexer; data:pointer; size:size_t; var stats:git_indexer_progress):cint;cdecl;external External_library name 'git_indexer_append';
function git_indexer_commit(var idx:git_indexer; var stats:git_indexer_progress):cint;cdecl;external External_library name 'git_indexer_commit';
function git_indexer_hash(var idx:git_indexer):Pgit_oid;cdecl;external External_library name 'git_indexer_hash';
procedure git_indexer_free(var idx:git_indexer);cdecl;external External_library name 'git_indexer_free';
type
  git_index_time = record
      seconds : int32_t;
      nanoseconds : uint32_t;
    end;

  git_index_entry = record
      ctime : git_index_time;
      mtime : git_index_time;
      dev : uint32_t;
      ino : uint32_t;
      mode : uint32_t;
      uid : uint32_t;
      gid : uint32_t;
      file_size : uint32_t;
      id : git_oid;
      flags : uint16_t;
      flags_extended : uint16_t;
      path : pcchar;
    end;

  git_index_entry_flag_t =  Longint;
  Const
    GIT_INDEX_ENTRY_EXTENDED = $4000;
    GIT_INDEX_ENTRY_VALID = $8000;

type
  git_index_entry_extended_flag_t =  Longint;
  Const
    GIT_INDEX_ENTRY_INTENT_TO_ADD = 1 shl 13;
    GIT_INDEX_ENTRY_SKIP_WORKTREE = 1 shl 14;
    GIT_INDEX_ENTRY_EXTENDED_FLAGS = GIT_INDEX_ENTRY_INTENT_TO_ADD or GIT_INDEX_ENTRY_SKIP_WORKTREE;
    GIT_INDEX_ENTRY_UPTODATE = 1 shl 2;

type
  git_index_capability_t =  Longint;
  Const
    GIT_INDEX_CAPABILITY_IGNORE_CASE = 1;
    GIT_INDEX_CAPABILITY_NO_FILEMODE = 2;
    GIT_INDEX_CAPABILITY_NO_SYMLINKS = 4;
    GIT_INDEX_CAPABILITY_FROM_OWNER = -(1);

type

  git_index_matched_path_cb = function (path:pcchar; matched_pathspec:pcchar; payload:pointer):cint;cdecl;

  git_index_add_option_t =  Longint;
  Const
    GIT_INDEX_ADD_DEFAULT = 0;
    GIT_INDEX_ADD_FORCE = 1 shl 0;
    GIT_INDEX_ADD_DISABLE_PATHSPEC_MATCH = 1 shl 1;
    GIT_INDEX_ADD_CHECK_PATHSPEC = 1 shl 2;

type
  git_index_stage_t =  Longint;
  Const
    GIT_INDEX_STAGE_ANY = -(1);
    GIT_INDEX_STAGE_NORMAL = 0;
    GIT_INDEX_STAGE_ANCESTOR = 1;
    GIT_INDEX_STAGE_OURS = 2;
    GIT_INDEX_STAGE_THEIRS = 3;


function git_index_open(var out:Pgit_index; index_path:pcchar):cint;cdecl;external External_library name 'git_index_open';
function git_index_new(var out:Pgit_index):cint;cdecl;external External_library name 'git_index_new';
procedure git_index_free(var index:git_index);cdecl;external External_library name 'git_index_free';
function git_index_owner(var index:git_index):Pgit_repository;cdecl;external External_library name 'git_index_owner';
function git_index_caps(var index:git_index):cint;cdecl;external External_library name 'git_index_caps';
function git_index_set_caps(var index:git_index; caps:cint):cint;cdecl;external External_library name 'git_index_set_caps';
function git_index_version(var index:git_index):cuint;cdecl;external External_library name 'git_index_version';
function git_index_set_version(var index:git_index; version:cuint):cint;cdecl;external External_library name 'git_index_set_version';
function git_index_read(var index:git_index; force:cint):cint;cdecl;external External_library name 'git_index_read';
function git_index_write(var index:git_index):cint;cdecl;external External_library name 'git_index_write';
function git_index_path(var index:git_index):pcchar;cdecl;external External_library name 'git_index_path';
function git_index_checksum(var index:git_index):Pgit_oid;cdecl;external External_library name 'git_index_checksum';
function git_index_read_tree(var index:git_index; var tree:git_tree):cint;cdecl;external External_library name 'git_index_read_tree';
function git_index_write_tree(var out:git_oid; var index:git_index):cint;cdecl;external External_library name 'git_index_write_tree';
function git_index_write_tree_to(var out:git_oid; var index:git_index; var repo:git_repository):cint;cdecl;external External_library name 'git_index_write_tree_to';
function git_index_entrycount(var index:git_index):size_t;cdecl;external External_library name 'git_index_entrycount';
function git_index_clear(var index:git_index):cint;cdecl;external External_library name 'git_index_clear';
function git_index_get_byindex(var index:git_index; n:size_t):Pgit_index_entry;cdecl;external External_library name 'git_index_get_byindex';
function git_index_get_bypath(var index:git_index; path:pcchar; stage:cint):Pgit_index_entry;cdecl;external External_library name 'git_index_get_bypath';
function git_index_remove(var index:git_index; path:pcchar; stage:cint):cint;cdecl;external External_library name 'git_index_remove';
function git_index_remove_directory(var index:git_index; dir:pcchar; stage:cint):cint;cdecl;external External_library name 'git_index_remove_directory';
function git_index_add(var index:git_index; var source_entry:git_index_entry):cint;cdecl;external External_library name 'git_index_add';
function git_index_entry_stage(var entry:git_index_entry):cint;cdecl;external External_library name 'git_index_entry_stage';
function git_index_entry_is_conflict(var entry:git_index_entry):cint;cdecl;external External_library name 'git_index_entry_is_conflict';
function git_index_iterator_new(var iterator_out:Pgit_index_iterator; var index:git_index):cint;cdecl;external External_library name 'git_index_iterator_new';
function git_index_iterator_next(var out:Pgit_index_entry; var iterator:git_index_iterator):cint;cdecl;external External_library name 'git_index_iterator_next';
procedure git_index_iterator_free(var iterator:git_index_iterator);cdecl;external External_library name 'git_index_iterator_free';
function git_index_add_bypath(var index:git_index; path:pcchar):cint;cdecl;external External_library name 'git_index_add_bypath';
function git_index_add_from_buffer(var index:git_index; var entry:git_index_entry; buffer:pointer; len:size_t):cint;cdecl;external External_library name 'git_index_add_from_buffer';
function git_index_remove_bypath(var index:git_index; path:pcchar):cint;cdecl;external External_library name 'git_index_remove_bypath';
function git_index_add_all(var index:git_index; var pathspec:git_strarray; flags:cuint; callback:git_index_matched_path_cb; payload:pointer):cint;cdecl;external External_library name 'git_index_add_all';
function git_index_remove_all(var index:git_index; var pathspec:git_strarray; callback:git_index_matched_path_cb; payload:pointer):cint;cdecl;external External_library name 'git_index_remove_all';
function git_index_update_all(var index:git_index; var pathspec:git_strarray; callback:git_index_matched_path_cb; payload:pointer):cint;cdecl;external External_library name 'git_index_update_all';
function git_index_find(var at_pos:size_t; var index:git_index; path:pcchar):cint;cdecl;external External_library name 'git_index_find';
function git_index_find_prefix(var at_pos:size_t; var index:git_index; prefix:pcchar):cint;cdecl;external External_library name 'git_index_find_prefix';
function git_index_conflict_add(var index:git_index; var ancestor_entry:git_index_entry; var our_entry:git_index_entry; var their_entry:git_index_entry):cint;cdecl;external External_library name 'git_index_conflict_add';
function git_index_conflict_get(var ancestor_out:Pgit_index_entry; var our_out:Pgit_index_entry; var their_out:Pgit_index_entry; var index:git_index; path:pcchar):cint;cdecl;external External_library name 'git_index_conflict_get';
function git_index_conflict_remove(var index:git_index; path:pcchar):cint;cdecl;external External_library name 'git_index_conflict_remove';
function git_index_conflict_cleanup(var index:git_index):cint;cdecl;external External_library name 'git_index_conflict_cleanup';
function git_index_has_conflicts(var index:git_index):cint;cdecl;external External_library name 'git_index_has_conflicts';
function git_index_conflict_iterator_new(var iterator_out:Pgit_index_conflict_iterator; var index:git_index):cint;cdecl;external External_library name 'git_index_conflict_iterator_new';
function git_index_conflict_next(var ancestor_out:Pgit_index_entry; var our_out:Pgit_index_entry; var their_out:Pgit_index_entry; var iterator:git_index_conflict_iterator):cint;cdecl;external External_library name 'git_index_conflict_next';
procedure git_index_conflict_iterator_free(var iterator:git_index_conflict_iterator);cdecl;external External_library name 'git_index_conflict_iterator_free';
type
  git_merge_file_input = record
      version : cuint;
      ptr : pcchar;
      size : size_t;
      path : pcchar;
      mode : cuint;
    end;

function git_merge_file_input_init(var opts:git_merge_file_input; version:cuint):cint;cdecl;external External_library name 'git_merge_file_input_init';
type
  git_merge_flag_t =  Longint;
  Const
    GIT_MERGE_FIND_RENAMES = 1 shl 0;
    GIT_MERGE_FAIL_ON_CONFLICT = 1 shl 1;
    GIT_MERGE_SKIP_REUC = 1 shl 2;
    GIT_MERGE_NO_RECURSIVE = 1 shl 3;

type
  git_merge_file_favor_t =  Longint;
  Const
    GIT_MERGE_FILE_FAVOR_NORMAL = 0;
    GIT_MERGE_FILE_FAVOR_OURS = 1;
    GIT_MERGE_FILE_FAVOR_THEIRS = 2;
    GIT_MERGE_FILE_FAVOR_UNION = 3;

type
  git_merge_file_flag_t =  Longint;
  Const
    GIT_MERGE_FILE_DEFAULT = 0;
    GIT_MERGE_FILE_STYLE_MERGE = 1 shl 0;
    GIT_MERGE_FILE_STYLE_DIFF3 = 1 shl 1;
    GIT_MERGE_FILE_SIMPLIFY_ALNUM = 1 shl 2;
    GIT_MERGE_FILE_IGNORE_WHITESPACE = 1 shl 3;
    GIT_MERGE_FILE_IGNORE_WHITESPACE_CHANGE = 1 shl 4;
    GIT_MERGE_FILE_IGNORE_WHITESPACE_EOL = 1 shl 5;
    GIT_MERGE_FILE_DIFF_PATIENCE = 1 shl 6;
    GIT_MERGE_FILE_DIFF_MINIMAL = 1 shl 7;

type
  git_merge_file_options = record
      version : cuint;
      ancestor_label : pcchar;
      our_label : pcchar;
      their_label : pcchar;
      favor : git_merge_file_favor_t;
      flags : uint32_t;
      marker_size : cushort;
    end;

function git_merge_file_options_init(var opts:git_merge_file_options; version:cuint):cint;cdecl;external External_library name 'git_merge_file_options_init';
type
  git_merge_file_result = record
      automergeable : cuint;
      path : pcchar;
      mode : cuint;
      ptr : pcchar;
      len : size_t;
    end;

  git_merge_options = record
      version : cuint;
      flags : uint32_t;
      rename_threshold : cuint;
      target_limit : cuint;
      metric : Pgit_diff_similarity_metric;
      recursion_limit : cuint;
      default_driver : pcchar;
      file_favor : git_merge_file_favor_t;
      file_flags : uint32_t;
    end;

function git_merge_options_init(var opts:git_merge_options; version:cuint):cint;cdecl;external External_library name 'git_merge_options_init';
type
  git_merge_analysis_t =  Longint;
  Const
    GIT_MERGE_ANALYSIS_NONE = 0;
    GIT_MERGE_ANALYSIS_NORMAL = 1 shl 0;
    GIT_MERGE_ANALYSIS_UP_TO_DATE = 1 shl 1;
    GIT_MERGE_ANALYSIS_FASTFORWARD = 1 shl 2;
    GIT_MERGE_ANALYSIS_UNBORN = 1 shl 3;

type
  git_merge_preference_t =  Longint;
  Const
    GIT_MERGE_PREFERENCE_NONE = 0;
    GIT_MERGE_PREFERENCE_NO_FASTFORWARD = 1 shl 0;
    GIT_MERGE_PREFERENCE_FASTFORWARD_ONLY = 1 shl 1;


function git_merge_analysis(var analysis_out:git_merge_analysis_t; var preference_out:git_merge_preference_t; var repo:git_repository; var their_heads:Pgit_annotated_commit; their_heads_len:size_t):cint;cdecl;external External_library name 'git_merge_analysis';
function git_merge_analysis_for_ref(var analysis_out:git_merge_analysis_t; var preference_out:git_merge_preference_t; var repo:git_repository; var our_ref:git_reference; var their_heads:Pgit_annotated_commit; 
           their_heads_len:size_t):cint;cdecl;external External_library name 'git_merge_analysis_for_ref';
function git_merge_base(var out:git_oid; var repo:git_repository; var one:git_oid; var two:git_oid):cint;cdecl;external External_library name 'git_merge_base';
function git_merge_bases(var out:git_oidarray; var repo:git_repository; var one:git_oid; var two:git_oid):cint;cdecl;external External_library name 'git_merge_bases';
function git_merge_base_many(var out:git_oid; var repo:git_repository; length:size_t; input_array:Pgit_oid):cint;cdecl;external External_library name 'git_merge_base_many';
function git_merge_bases_many(var out:git_oidarray; var repo:git_repository; length:size_t; input_array:Pgit_oid):cint;cdecl;external External_library name 'git_merge_bases_many';
function git_merge_base_octopus(var out:git_oid; var repo:git_repository; length:size_t; input_array:Pgit_oid):cint;cdecl;external External_library name 'git_merge_base_octopus';
function git_merge_file(var out:git_merge_file_result; var ancestor:git_merge_file_input; var ours:git_merge_file_input; var theirs:git_merge_file_input; var opts:git_merge_file_options):cint;cdecl;external External_library name 'git_merge_file';
function git_merge_file_from_index(var out:git_merge_file_result; var repo:git_repository; var ancestor:git_index_entry; var ours:git_index_entry; var theirs:git_index_entry; 
           var opts:git_merge_file_options):cint;cdecl;external External_library name 'git_merge_file_from_index';
procedure git_merge_file_result_free(var result:git_merge_file_result);cdecl;external External_library name 'git_merge_file_result_free';
function git_merge_trees(var out:Pgit_index; var repo:git_repository; var ancestor_tree:git_tree; var our_tree:git_tree; var their_tree:git_tree; 
           var opts:git_merge_options):cint;cdecl;external External_library name 'git_merge_trees';
function git_merge_commits(var out:Pgit_index; var repo:git_repository; var our_commit:git_commit; var their_commit:git_commit; var opts:git_merge_options):cint;cdecl;external External_library name 'git_merge_commits';
function git_merge(var repo:git_repository; var their_heads:Pgit_annotated_commit; their_heads_len:size_t; var merge_opts:git_merge_options; var checkout_opts:git_checkout_options):cint;cdecl;external External_library name 'git_merge';
type
  git_cherrypick_options = record
      version : cuint;
      mainline : cuint;
      merge_opts : git_merge_options;
      checkout_opts : git_checkout_options;
    end;

function git_cherrypick_options_init(var opts:git_cherrypick_options; version:cuint):cint;cdecl;external External_library name 'git_cherrypick_options_init';
function git_cherrypick_commit(var out:Pgit_index; var repo:git_repository; var cherrypick_commit:git_commit; var our_commit:git_commit; mainline:cuint; 
           var merge_options:git_merge_options):cint;cdecl;external External_library name 'git_cherrypick_commit';
function git_cherrypick(var repo:git_repository; var commit:git_commit; var cherrypick_options:git_cherrypick_options):cint;cdecl;external External_library name 'git_cherrypick';
type
  git_direction =  Longint;
  Const
    GIT_DIRECTION_FETCH = 0;
    GIT_DIRECTION_PUSH = 1;

type
  git_remote_head = record
      local : cint;
      oid : git_oid;
      loid : git_oid;
      name : pcchar;
      symref_target : pcchar;
    end;


function git_refspec_parse(var refspec:Pgit_refspec; input:pcchar; is_fetch:cint):cint;cdecl;external External_library name 'git_refspec_parse';
procedure git_refspec_free(var refspec:git_refspec);cdecl;external External_library name 'git_refspec_free';
function git_refspec_src(var refspec:git_refspec):pcchar;cdecl;external External_library name 'git_refspec_src';
function git_refspec_dst(var refspec:git_refspec):pcchar;cdecl;external External_library name 'git_refspec_dst';
function git_refspec_string(var refspec:git_refspec):pcchar;cdecl;external External_library name 'git_refspec_string';
function git_refspec_force(var refspec:git_refspec):cint;cdecl;external External_library name 'git_refspec_force';
function git_refspec_direction(var spec:git_refspec):git_direction;cdecl;external External_library name 'git_refspec_direction';
function git_refspec_src_matches(var refspec:git_refspec; refname:pcchar):cint;cdecl;external External_library name 'git_refspec_src_matches';
function git_refspec_dst_matches(var refspec:git_refspec; refname:pcchar):cint;cdecl;external External_library name 'git_refspec_dst_matches';
function git_refspec_transform(var out:git_buf; var spec:git_refspec; name:pcchar):cint;cdecl;external External_library name 'git_refspec_transform';
function git_refspec_rtransform(var out:git_buf; var spec:git_refspec; name:pcchar):cint;cdecl;external External_library name 'git_refspec_rtransform';
type
  git_credential_t =  Longint;
  Const
    GIT_CREDENTIAL_USERPASS_PLAINTEXT = 1 shl 0;
    GIT_CREDENTIAL_SSH_KEY = 1 shl 1;
    GIT_CREDENTIAL_SSH_CUSTOM = 1 shl 2;
    GIT_CREDENTIAL_DEFAULT = 1 shl 3;
    GIT_CREDENTIAL_SSH_INTERACTIVE = 1 shl 4;
    GIT_CREDENTIAL_USERNAME = 1 shl 5;
    GIT_CREDENTIAL_SSH_MEMORY = 1 shl 6;

type
  git_credential = git_credential_default;

  git_credential_acquire_cb = function (var out:Pgit_credential; url:pcchar; username_from_url:pcchar; allowed_types:cuint; payload:pointer):cint;cdecl;

procedure git_credential_free(var cred:git_credential);cdecl;external External_library name 'git_credential_free';
function git_credential_has_username(var cred:git_credential):cint;cdecl;external External_library name 'git_credential_has_username';
function git_credential_get_username(var cred:git_credential):pcchar;cdecl;external External_library name 'git_credential_get_username';
function git_credential_userpass_plaintext_new(var out:Pgit_credential; username:pcchar; password:pcchar):cint;cdecl;external External_library name 'git_credential_userpass_plaintext_new';
function git_credential_default_new(var out:Pgit_credential):cint;cdecl;external External_library name 'git_credential_default_new';
function git_credential_username_new(var out:Pgit_credential; username:pcchar):cint;cdecl;external External_library name 'git_credential_username_new';
function git_credential_ssh_key_new(var out:Pgit_credential; username:pcchar; publickey:pcchar; privatekey:pcchar; passphrase:pcchar):cint;cdecl;external External_library name 'git_credential_ssh_key_new';
function git_credential_ssh_key_memory_new(var out:Pgit_credential; username:pcchar; publickey:pcchar; privatekey:pcchar; passphrase:pcchar):cint;cdecl;external External_library name 'git_credential_ssh_key_memory_new';
type
  _LIBSSH2_SESSION = LIBSSH2_SESSION;
  _LIBSSH2_USERAUTH_KBDINT_PROMPT = LIBSSH2_USERAUTH_KBDINT_PROMPT;
  _LIBSSH2_USERAUTH_KBDINT_RESPONSE = LIBSSH2_USERAUTH_KBDINT_RESPONSE;

  git_credential_ssh_interactive_cb = procedure (name:pcchar; name_len:cint; instruction:pcchar; instruction_len:cint; num_prompts:cint; 
                var prompts:LIBSSH2_USERAUTH_KBDINT_PROMPT; var responses:LIBSSH2_USERAUTH_KBDINT_RESPONSE; abstract:Ppointer);cdecl;

function git_credential_ssh_interactive_new(var out:Pgit_credential; username:pcchar; prompt_callback:git_credential_ssh_interactive_cb; payload:pointer):cint;cdecl;external External_library name 'git_credential_ssh_interactive_new';
function git_credential_ssh_key_from_agent(var out:Pgit_credential; username:pcchar):cint;cdecl;external External_library name 'git_credential_ssh_key_from_agent';
type

  git_credential_sign_cb = function (var session:LIBSSH2_SESSION; sig:Ppcuchar; var sig_len:size_t; data:pcuchar; data_len:size_t; 
               abstract:Ppointer):cint;cdecl;

function git_credential_ssh_custom_new(var out:Pgit_credential; username:pcchar; publickey:pcchar; publickey_len:size_t; sign_callback:git_credential_sign_cb; 
           payload:pointer):cint;cdecl;external External_library name 'git_credential_ssh_custom_new';
type

  git_transport_message_cb = function (str:pcchar; len:cint; payload:pointer):cint;cdecl;

  git_transport_cb = function (var out:Pgit_transport; var owner:git_remote; param:pointer):cint;cdecl;

  git_packbuilder_stage_t =  Longint;
  Const
    GIT_PACKBUILDER_ADDING_OBJECTS = 0;
    GIT_PACKBUILDER_DELTAFICATION = 1;


function git_packbuilder_new(var out:Pgit_packbuilder; var repo:git_repository):cint;cdecl;external External_library name 'git_packbuilder_new';
function git_packbuilder_set_threads(var pb:git_packbuilder; n:cuint):cuint;cdecl;external External_library name 'git_packbuilder_set_threads';
function git_packbuilder_insert(var pb:git_packbuilder; var id:git_oid; name:pcchar):cint;cdecl;external External_library name 'git_packbuilder_insert';
function git_packbuilder_insert_tree(var pb:git_packbuilder; var id:git_oid):cint;cdecl;external External_library name 'git_packbuilder_insert_tree';
function git_packbuilder_insert_commit(var pb:git_packbuilder; var id:git_oid):cint;cdecl;external External_library name 'git_packbuilder_insert_commit';
function git_packbuilder_insert_walk(var pb:git_packbuilder; var walk:git_revwalk):cint;cdecl;external External_library name 'git_packbuilder_insert_walk';
function git_packbuilder_insert_recur(var pb:git_packbuilder; var id:git_oid; name:pcchar):cint;cdecl;external External_library name 'git_packbuilder_insert_recur';
function git_packbuilder_write_buf(var buf:git_buf; var pb:git_packbuilder):cint;cdecl;external External_library name 'git_packbuilder_write_buf';
function git_packbuilder_write(var pb:git_packbuilder; path:pcchar; mode:cuint; progress_cb:git_indexer_progress_cb; progress_cb_payload:pointer):cint;cdecl;external External_library name 'git_packbuilder_write';
function git_packbuilder_hash(var pb:git_packbuilder):Pgit_oid;cdecl;external External_library name 'git_packbuilder_hash';
type

  git_packbuilder_foreach_cb = function (buf:pointer; size:size_t; payload:pointer):cint;cdecl;

function git_packbuilder_foreach(var pb:git_packbuilder; cb:git_packbuilder_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_packbuilder_foreach';
function git_packbuilder_object_count(var pb:git_packbuilder):size_t;cdecl;external External_library name 'git_packbuilder_object_count';
function git_packbuilder_written(var pb:git_packbuilder):size_t;cdecl;external External_library name 'git_packbuilder_written';
type

  git_packbuilder_progress = function (stage:cint; current:uint32_t; total:uint32_t; payload:pointer):cint;cdecl;

function git_packbuilder_set_callbacks(var pb:git_packbuilder; progress_cb:git_packbuilder_progress; progress_cb_payload:pointer):cint;cdecl;external External_library name 'git_packbuilder_set_callbacks';
procedure git_packbuilder_free(var pb:git_packbuilder);cdecl;external External_library name 'git_packbuilder_free';
type
  git_proxy_t =  Longint;
  Const
    GIT_PROXY_NONE = 0;
    GIT_PROXY_AUTO = 1;
    GIT_PROXY_SPECIFIED = 2;

type
  git_proxy_options = record
      version : cuint;
      _type : git_proxy_t;
      url : pcchar;
      credentials : git_credential_acquire_cb;
      certificate_check : git_transport_certificate_check_cb;
      payload : pointer;
    end;

function git_proxy_options_init(var opts:git_proxy_options; version:cuint):cint;cdecl;external External_library name 'git_proxy_options_init';
function git_remote_create(var out:Pgit_remote; var repo:git_repository; name:pcchar; url:pcchar):cint;cdecl;external External_library name 'git_remote_create';
type
  git_remote_create_flags =  Longint;
  Const
    GIT_REMOTE_CREATE_SKIP_INSTEADOF = 1 shl 0;
    GIT_REMOTE_CREATE_SKIP_DEFAULT_FETCHSPEC = 1 shl 1;

type
  git_remote_create_options = record
      version : cuint;
      repository : Pgit_repository;
      name : pcchar;
      fetchspec : pcchar;
      flags : cuint;
    end;

function git_remote_create_options_init(var opts:git_remote_create_options; version:cuint):cint;cdecl;external External_library name 'git_remote_create_options_init';
function git_remote_create_with_opts(var out:Pgit_remote; url:pcchar; var opts:git_remote_create_options):cint;cdecl;external External_library name 'git_remote_create_with_opts';
function git_remote_create_with_fetchspec(var out:Pgit_remote; var repo:git_repository; name:pcchar; url:pcchar; fetch:pcchar):cint;cdecl;external External_library name 'git_remote_create_with_fetchspec';
function git_remote_create_anonymous(var out:Pgit_remote; var repo:git_repository; url:pcchar):cint;cdecl;external External_library name 'git_remote_create_anonymous';
function git_remote_create_detached(var out:Pgit_remote; url:pcchar):cint;cdecl;external External_library name 'git_remote_create_detached';
function git_remote_lookup(var out:Pgit_remote; var repo:git_repository; name:pcchar):cint;cdecl;external External_library name 'git_remote_lookup';
function git_remote_dup(var dest:Pgit_remote; var source:git_remote):cint;cdecl;external External_library name 'git_remote_dup';
function git_remote_owner(var remote:git_remote):Pgit_repository;cdecl;external External_library name 'git_remote_owner';
function git_remote_name(var remote:git_remote):pcchar;cdecl;external External_library name 'git_remote_name';
function git_remote_url(var remote:git_remote):pcchar;cdecl;external External_library name 'git_remote_url';
function git_remote_pushurl(var remote:git_remote):pcchar;cdecl;external External_library name 'git_remote_pushurl';
function git_remote_set_url(var repo:git_repository; remote:pcchar; url:pcchar):cint;cdecl;external External_library name 'git_remote_set_url';
function git_remote_set_pushurl(var repo:git_repository; remote:pcchar; url:pcchar):cint;cdecl;external External_library name 'git_remote_set_pushurl';
function git_remote_add_fetch(var repo:git_repository; remote:pcchar; refspec:pcchar):cint;cdecl;external External_library name 'git_remote_add_fetch';
function git_remote_get_fetch_refspecs(var array:git_strarray; var remote:git_remote):cint;cdecl;external External_library name 'git_remote_get_fetch_refspecs';
function git_remote_add_push(var repo:git_repository; remote:pcchar; refspec:pcchar):cint;cdecl;external External_library name 'git_remote_add_push';
function git_remote_get_push_refspecs(var array:git_strarray; var remote:git_remote):cint;cdecl;external External_library name 'git_remote_get_push_refspecs';
function git_remote_refspec_count(var remote:git_remote):size_t;cdecl;external External_library name 'git_remote_refspec_count';
function git_remote_get_refspec(var remote:git_remote; n:size_t):Pgit_refspec;cdecl;external External_library name 'git_remote_get_refspec';
function git_remote_connect(var remote:git_remote; direction:git_direction; var callbacks:git_remote_callbacks; var proxy_opts:git_proxy_options; var custom_headers:git_strarray):cint;cdecl;external External_library name 'git_remote_connect';
function git_remote_ls(var out:PPgit_remote_head; var size:size_t; var remote:git_remote):cint;cdecl;external External_library name 'git_remote_ls';
function git_remote_connected(var remote:git_remote):cint;cdecl;external External_library name 'git_remote_connected';
function git_remote_stop(var remote:git_remote):cint;cdecl;external External_library name 'git_remote_stop';
function git_remote_disconnect(var remote:git_remote):cint;cdecl;external External_library name 'git_remote_disconnect';
procedure git_remote_free(var remote:git_remote);cdecl;external External_library name 'git_remote_free';
function git_remote_list(var out:git_strarray; var repo:git_repository):cint;cdecl;external External_library name 'git_remote_list';
type
  git_remote_completion_t =  Longint;
  TFunction_typeGit_remote_completion_tDataPointerCint = function (_type:git_remote_completion_t; data:pointer):cint;
  Const
    GIT_REMOTE_COMPLETION_DOWNLOAD = 0;
    GIT_REMOTE_COMPLETION_INDEXING = 1;
    GIT_REMOTE_COMPLETION_ERROR = 2;

type

  git_push_transfer_progress_cb = function (current:cuint; total:cuint; bytes:size_t; payload:pointer):cint;cdecl;

  git_push_update = record
      src_refname : pcchar;
      dst_refname : pcchar;
      src : git_oid;
      dst : git_oid;
    end;

  git_push_negotiation = function (var updates:Pgit_push_update; len:size_t; payload:pointer):cint;cdecl;

  git_push_update_reference_cb = function (refname:pcchar; status:pcchar; data:pointer):cint;cdecl;

  git_url_resolve_cb = function (var url_resolved:git_buf; url:pcchar; direction:cint; payload:pointer):cint;cdecl;
  git_remote_callbacks = record
      version : cuint;cdecl;
      sideband_progress : git_transport_message_cb;
      completion : TFunction_typeGit_remote_completion_tDataPointerCint;cdecl;
      credentials : git_credential_acquire_cb;
      certificate_check : git_transport_certificate_check_cb;
      transfer_progress : git_indexer_progress_cb;
      update_tips : TFunctionRefnamePccharVarAGit_oidVarBGit_oidDataPointerCint;cdecl;
      pack_progress : git_packbuilder_progress;
      push_transfer_progress : git_push_transfer_progress_cb;
      push_update_reference : git_push_update_reference_cb;
      push_negotiation : git_push_negotiation;
      transport : git_transport_cb;
      payload : pointer;
      resolve_url : git_url_resolve_cb;
    end;


function git_remote_init_callbacks(var opts:git_remote_callbacks; version:cuint):cint;cdecl;external External_library name 'git_remote_init_callbacks';
type
  git_fetch_prune_t =  Longint;
  Const
    GIT_FETCH_PRUNE_UNSPECIFIED = 0;
    GIT_FETCH_PRUNE = 1;
    GIT_FETCH_NO_PRUNE = 2;

type
  git_remote_autotag_option_t =  Longint;
  Const
    GIT_REMOTE_DOWNLOAD_TAGS_UNSPECIFIED = 0;
    GIT_REMOTE_DOWNLOAD_TAGS_AUTO = 1;
    GIT_REMOTE_DOWNLOAD_TAGS_NONE = 2;
    GIT_REMOTE_DOWNLOAD_TAGS_ALL = 3;

type
  git_fetch_options = record
      version : cint;
      callbacks : git_remote_callbacks;
      prune : git_fetch_prune_t;
      update_fetchhead : cint;
      download_tags : git_remote_autotag_option_t;
      proxy_opts : git_proxy_options;
      custom_headers : git_strarray;
    end;

function git_fetch_options_init(var opts:git_fetch_options; version:cuint):cint;cdecl;external External_library name 'git_fetch_options_init';
type
  git_push_options = record
      version : cuint;
      pb_parallelism : cuint;
      callbacks : git_remote_callbacks;
      proxy_opts : git_proxy_options;
      custom_headers : git_strarray;
    end;

function git_push_options_init(var opts:git_push_options; version:cuint):cint;cdecl;external External_library name 'git_push_options_init';
function git_remote_download(var remote:git_remote; var refspecs:git_strarray; var opts:git_fetch_options):cint;cdecl;external External_library name 'git_remote_download';
function git_remote_upload(var remote:git_remote; var refspecs:git_strarray; var opts:git_push_options):cint;cdecl;external External_library name 'git_remote_upload';
function git_remote_update_tips(var remote:git_remote; var callbacks:git_remote_callbacks; update_fetchhead:cint; download_tags:git_remote_autotag_option_t; reflog_message:pcchar):cint;cdecl;external External_library name 'git_remote_update_tips';
function git_remote_fetch(var remote:git_remote; var refspecs:git_strarray; var opts:git_fetch_options; reflog_message:pcchar):cint;cdecl;external External_library name 'git_remote_fetch';
function git_remote_prune(var remote:git_remote; var callbacks:git_remote_callbacks):cint;cdecl;external External_library name 'git_remote_prune';
function git_remote_push(var remote:git_remote; var refspecs:git_strarray; var opts:git_push_options):cint;cdecl;external External_library name 'git_remote_push';
function git_remote_stats(var remote:git_remote):Pgit_indexer_progress;cdecl;external External_library name 'git_remote_stats';
function git_remote_autotag(var remote:git_remote):git_remote_autotag_option_t;cdecl;external External_library name 'git_remote_autotag';
function git_remote_set_autotag(var repo:git_repository; remote:pcchar; value:git_remote_autotag_option_t):cint;cdecl;external External_library name 'git_remote_set_autotag';
function git_remote_prune_refs(var remote:git_remote):cint;cdecl;external External_library name 'git_remote_prune_refs';
function git_remote_rename(var problems:git_strarray; var repo:git_repository; name:pcchar; new_name:pcchar):cint;cdecl;external External_library name 'git_remote_rename';
function git_remote_is_valid_name(remote_name:pcchar):cint;cdecl;external External_library name 'git_remote_is_valid_name';
function git_remote_delete(var repo:git_repository; name:pcchar):cint;cdecl;external External_library name 'git_remote_delete';
function git_remote_default_branch(var out:git_buf; var remote:git_remote):cint;cdecl;external External_library name 'git_remote_default_branch';
type
  git_clone_local_t =  Longint;
  Const
    GIT_CLONE_LOCAL_AUTO = 0;
    GIT_CLONE_LOCAL = 1;
    GIT_CLONE_NO_LOCAL = 2;
    GIT_CLONE_LOCAL_NO_LINKS = 3;

type

  git_remote_create_cb = function (var out:Pgit_remote; var repo:git_repository; name:pcchar; url:pcchar; payload:pointer):cint;cdecl;

  git_repository_create_cb = function (var out:Pgit_repository; path:pcchar; bare:cint; payload:pointer):cint;cdecl;

  git_clone_options = record
      version : cuint;
      checkout_opts : git_checkout_options;
      fetch_opts : git_fetch_options;
      bare : cint;
      local : git_clone_local_t;
      checkout_branch : pcchar;
      repository_cb : git_repository_create_cb;
      repository_cb_payload : pointer;
      remote_cb : git_remote_create_cb;
      remote_cb_payload : pointer;
    end;

function git_clone_options_init(var opts:git_clone_options; version:cuint):cint;cdecl;external External_library name 'git_clone_options_init';
function git_clone(var out:Pgit_repository; url:pcchar; local_path:pcchar; var options:git_clone_options):cint;cdecl;external External_library name 'git_clone';
function git_commit_lookup(var commit:Pgit_commit; var repo:git_repository; var id:git_oid):cint;cdecl;external External_library name 'git_commit_lookup';
function git_commit_lookup_prefix(var commit:Pgit_commit; var repo:git_repository; var id:git_oid; len:size_t):cint;cdecl;external External_library name 'git_commit_lookup_prefix';
procedure git_commit_free(var commit:git_commit);cdecl;external External_library name 'git_commit_free';
function git_commit_id(var commit:git_commit):Pgit_oid;cdecl;external External_library name 'git_commit_id';
function git_commit_owner(var commit:git_commit):Pgit_repository;cdecl;external External_library name 'git_commit_owner';
function git_commit_message_encoding(var commit:git_commit):pcchar;cdecl;external External_library name 'git_commit_message_encoding';
function git_commit_message(var commit:git_commit):pcchar;cdecl;external External_library name 'git_commit_message';
function git_commit_message_raw(var commit:git_commit):pcchar;cdecl;external External_library name 'git_commit_message_raw';
function git_commit_summary(var commit:git_commit):pcchar;cdecl;external External_library name 'git_commit_summary';
function git_commit_body(var commit:git_commit):pcchar;cdecl;external External_library name 'git_commit_body';
function git_commit_time(var commit:git_commit):git_time_t;cdecl;external External_library name 'git_commit_time';
function git_commit_time_offset(var commit:git_commit):cint;cdecl;external External_library name 'git_commit_time_offset';
function git_commit_committer(var commit:git_commit):Pgit_signature;cdecl;external External_library name 'git_commit_committer';
function git_commit_author(var commit:git_commit):Pgit_signature;cdecl;external External_library name 'git_commit_author';
function git_commit_committer_with_mailmap(var out:Pgit_signature; var commit:git_commit; var mailmap:git_mailmap):cint;cdecl;external External_library name 'git_commit_committer_with_mailmap';
function git_commit_author_with_mailmap(var out:Pgit_signature; var commit:git_commit; var mailmap:git_mailmap):cint;cdecl;external External_library name 'git_commit_author_with_mailmap';
function git_commit_raw_header(var commit:git_commit):pcchar;cdecl;external External_library name 'git_commit_raw_header';
function git_commit_tree(var tree_out:Pgit_tree; var commit:git_commit):cint;cdecl;external External_library name 'git_commit_tree';
function git_commit_tree_id(var commit:git_commit):Pgit_oid;cdecl;external External_library name 'git_commit_tree_id';
function git_commit_parentcount(var commit:git_commit):cuint;cdecl;external External_library name 'git_commit_parentcount';
function git_commit_parent(var out:Pgit_commit; var commit:git_commit; n:cuint):cint;cdecl;external External_library name 'git_commit_parent';
function git_commit_parent_id(var commit:git_commit; n:cuint):Pgit_oid;cdecl;external External_library name 'git_commit_parent_id';
function git_commit_nth_gen_ancestor(var ancestor:Pgit_commit; var commit:git_commit; n:cuint):cint;cdecl;external External_library name 'git_commit_nth_gen_ancestor';
function git_commit_header_field(var out:git_buf; var commit:git_commit; field:pcchar):cint;cdecl;external External_library name 'git_commit_header_field';
function git_commit_extract_signature(var signature:git_buf; var signed_data:git_buf; var repo:git_repository; var commit_id:git_oid; field:pcchar):cint;cdecl;external External_library name 'git_commit_extract_signature';
function git_commit_create(var id:git_oid; var repo:git_repository; update_ref:pcchar; var author:git_signature; var committer:git_signature; 
           message_encoding:pcchar; message:pcchar; var tree:git_tree; parent_count:size_t; var parents:Pgit_commit):cint;cdecl;external External_library name 'git_commit_create';
function git_commit_create_v(var id:git_oid; var repo:git_repository; update_ref:pcchar; var author:git_signature; var committer:git_signature; 
           message_encoding:pcchar; message:pcchar; var tree:git_tree; parent_count:size_t; args:array of const):cint;cdecl;external External_library name 'git_commit_create_v';
function git_commit_create_v(var id:git_oid; var repo:git_repository; update_ref:pcchar; var author:git_signature; var committer:git_signature; 
           message_encoding:pcchar; message:pcchar; var tree:git_tree; parent_count:size_t):cint;cdecl;external External_library name 'git_commit_create_v';
function git_commit_amend(var id:git_oid; var commit_to_amend:git_commit; update_ref:pcchar; var author:git_signature; var committer:git_signature; 
           message_encoding:pcchar; message:pcchar; var tree:git_tree):cint;cdecl;external External_library name 'git_commit_amend';
function git_commit_create_buffer(var out:git_buf; var repo:git_repository; var author:git_signature; var committer:git_signature; message_encoding:pcchar; 
           message:pcchar; var tree:git_tree; parent_count:size_t; var parents:Pgit_commit):cint;cdecl;external External_library name 'git_commit_create_buffer';
function git_commit_create_with_signature(var out:git_oid; var repo:git_repository; commit_content:pcchar; signature:pcchar; signature_field:pcchar):cint;cdecl;external External_library name 'git_commit_create_with_signature';
function git_commit_dup(var out:Pgit_commit; var source:git_commit):cint;cdecl;external External_library name 'git_commit_dup';
type

  git_commit_signing_cb = function (var signature:git_buf; var signature_field:git_buf; commit_content:pcchar; payload:pointer):cint;cdecl;

  git_config_level_t =  Longint;
  Const
    GIT_CONFIG_LEVEL_PROGRAMDATA = 1;
    GIT_CONFIG_LEVEL_SYSTEM = 2;
    GIT_CONFIG_LEVEL_XDG = 3;
    GIT_CONFIG_LEVEL_GLOBAL = 4;
    GIT_CONFIG_LEVEL_LOCAL = 5;
    GIT_CONFIG_LEVEL_APP = 6;
    GIT_CONFIG_HIGHEST_LEVEL = -(1);

type
  git_config_entry = record
      name : pcchar;
      value : pcchar;
      include_depth : cuint;
      level : git_config_level_t;
      free : TProcedureVarEntryGit_config_entry;cdecl;
      payload : pointer;
    end;
type
  TProcedureVarEntryGit_config_entry = procedure (var entry:git_config_entry);

procedure git_config_entry_free(_para1:Pgit_config_entry);cdecl;external External_library name 'git_config_entry_free';
type

  git_config_foreach_cb = function (var entry:git_config_entry; payload:pointer):cint;cdecl;

  git_configmap_t =  Longint;
  Const
    GIT_CONFIGMAP_FALSE = 0;
    GIT_CONFIGMAP_TRUE = 1;
    GIT_CONFIGMAP_INT32 = 2;
    GIT_CONFIGMAP_STRING = 3;

type
  git_configmap = record
      _type : git_configmap_t;
      str_match : pcchar;
      map_value : cint;
    end;

function git_config_find_global(var out:git_buf):cint;cdecl;external External_library name 'git_config_find_global';
function git_config_find_xdg(var out:git_buf):cint;cdecl;external External_library name 'git_config_find_xdg';
function git_config_find_system(var out:git_buf):cint;cdecl;external External_library name 'git_config_find_system';
function git_config_find_programdata(var out:git_buf):cint;cdecl;external External_library name 'git_config_find_programdata';
function git_config_open_default(var out:Pgit_config):cint;cdecl;external External_library name 'git_config_open_default';
function git_config_new(var out:Pgit_config):cint;cdecl;external External_library name 'git_config_new';
function git_config_add_file_ondisk(var cfg:git_config; path:pcchar; level:git_config_level_t; var repo:git_repository; force:cint):cint;cdecl;external External_library name 'git_config_add_file_ondisk';
function git_config_open_ondisk(var out:Pgit_config; path:pcchar):cint;cdecl;external External_library name 'git_config_open_ondisk';
function git_config_open_level(var out:Pgit_config; var parent:git_config; level:git_config_level_t):cint;cdecl;external External_library name 'git_config_open_level';
function git_config_open_global(var out:Pgit_config; var config:git_config):cint;cdecl;external External_library name 'git_config_open_global';
function git_config_snapshot(var out:Pgit_config; var config:git_config):cint;cdecl;external External_library name 'git_config_snapshot';
procedure git_config_free(var cfg:git_config);cdecl;external External_library name 'git_config_free';
function git_config_get_entry(var out:Pgit_config_entry; var cfg:git_config; name:pcchar):cint;cdecl;external External_library name 'git_config_get_entry';
function git_config_get_int32(var out:int32_t; var cfg:git_config; name:pcchar):cint;cdecl;external External_library name 'git_config_get_int32';
function git_config_get_int64(var out:int64_t; var cfg:git_config; name:pcchar):cint;cdecl;external External_library name 'git_config_get_int64';
function git_config_get_bool(var out:cint; var cfg:git_config; name:pcchar):cint;cdecl;external External_library name 'git_config_get_bool';
function git_config_get_path(var out:git_buf; var cfg:git_config; name:pcchar):cint;cdecl;external External_library name 'git_config_get_path';
function git_config_get_string(out:Ppcchar; var cfg:git_config; name:pcchar):cint;cdecl;external External_library name 'git_config_get_string';
function git_config_get_string_buf(var out:git_buf; var cfg:git_config; name:pcchar):cint;cdecl;external External_library name 'git_config_get_string_buf';
function git_config_get_multivar_foreach(var cfg:git_config; name:pcchar; regexp:pcchar; callback:git_config_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_config_get_multivar_foreach';
function git_config_multivar_iterator_new(var out:Pgit_config_iterator; var cfg:git_config; name:pcchar; regexp:pcchar):cint;cdecl;external External_library name 'git_config_multivar_iterator_new';
function git_config_next(var entry:Pgit_config_entry; var iter:git_config_iterator):cint;cdecl;external External_library name 'git_config_next';
procedure git_config_iterator_free(var iter:git_config_iterator);cdecl;external External_library name 'git_config_iterator_free';
function git_config_set_int32(var cfg:git_config; name:pcchar; value:int32_t):cint;cdecl;external External_library name 'git_config_set_int32';
function git_config_set_int64(var cfg:git_config; name:pcchar; value:int64_t):cint;cdecl;external External_library name 'git_config_set_int64';
function git_config_set_bool(var cfg:git_config; name:pcchar; value:cint):cint;cdecl;external External_library name 'git_config_set_bool';
function git_config_set_string(var cfg:git_config; name:pcchar; value:pcchar):cint;cdecl;external External_library name 'git_config_set_string';
function git_config_set_multivar(var cfg:git_config; name:pcchar; regexp:pcchar; value:pcchar):cint;cdecl;external External_library name 'git_config_set_multivar';
function git_config_delete_entry(var cfg:git_config; name:pcchar):cint;cdecl;external External_library name 'git_config_delete_entry';
function git_config_delete_multivar(var cfg:git_config; name:pcchar; regexp:pcchar):cint;cdecl;external External_library name 'git_config_delete_multivar';
function git_config_foreach(var cfg:git_config; callback:git_config_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_config_foreach';
function git_config_iterator_new(var out:Pgit_config_iterator; var cfg:git_config):cint;cdecl;external External_library name 'git_config_iterator_new';
function git_config_iterator_glob_new(var out:Pgit_config_iterator; var cfg:git_config; regexp:pcchar):cint;cdecl;external External_library name 'git_config_iterator_glob_new';
function git_config_foreach_match(var cfg:git_config; regexp:pcchar; callback:git_config_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_config_foreach_match';
function git_config_get_mapped(var out:cint; var cfg:git_config; name:pcchar; var maps:git_configmap; map_n:size_t):cint;cdecl;external External_library name 'git_config_get_mapped';
function git_config_lookup_map_value(var out:cint; var maps:git_configmap; map_n:size_t; value:pcchar):cint;cdecl;external External_library name 'git_config_lookup_map_value';
function git_config_parse_bool(var out:cint; value:pcchar):cint;cdecl;external External_library name 'git_config_parse_bool';
function git_config_parse_int32(var out:int32_t; value:pcchar):cint;cdecl;external External_library name 'git_config_parse_int32';
function git_config_parse_int64(var out:int64_t; value:pcchar):cint;cdecl;external External_library name 'git_config_parse_int64';
function git_config_parse_path(var out:git_buf; value:pcchar):cint;cdecl;external External_library name 'git_config_parse_path';
function git_config_backend_foreach_match(var backend:git_config_backend; regexp:pcchar; callback:git_config_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_config_backend_foreach_match';
function git_config_lock(var tx:Pgit_transaction; var cfg:git_config):cint;cdecl;external External_library name 'git_config_lock';
type
  git_describe_strategy_t =  Longint;
  Const
    GIT_DESCRIBE_DEFAULT = 0;
    GIT_DESCRIBE_TAGS = 1;
    GIT_DESCRIBE_ALL = 2;

type
  git_describe_options = record
      version : cuint;
      max_candidates_tags : cuint;
      describe_strategy : cuint;
      pattern : pcchar;
      only_follow_first_parent : cint;
      show_commit_oid_as_fallback : cint;
    end;

function git_describe_options_init(var opts:git_describe_options; version:cuint):cint;cdecl;external External_library name 'git_describe_options_init';
type
  git_describe_format_options = record
      version : cuint;
      abbreviated_size : cuint;
      always_use_long_format : cint;
      dirty_suffix : pcchar;
    end;

function git_describe_format_options_init(var opts:git_describe_format_options; version:cuint):cint;cdecl;external External_library name 'git_describe_format_options_init';


function git_describe_commit(var result:Pgit_describe_result; var committish:git_object; var opts:git_describe_options):cint;cdecl;external External_library name 'git_describe_commit';
function git_describe_workdir(var out:Pgit_describe_result; var repo:git_repository; var opts:git_describe_options):cint;cdecl;external External_library name 'git_describe_workdir';
function git_describe_format(var out:git_buf; var result:git_describe_result; var opts:git_describe_format_options):cint;cdecl;external External_library name 'git_describe_format';
procedure git_describe_result_free(var result:git_describe_result);cdecl;external External_library name 'git_describe_result_free';
type
  git_error_code =  Longint;
  Const
    GIT_OK = 0;
    GIT_ERROR = -(1);
    GIT_ENOTFOUND = -(3);
    GIT_EEXISTS = -(4);
    GIT_EAMBIGUOUS = -(5);
    GIT_EBUFS = -(6);
    GIT_EUSER = -(7);
    GIT_EBAREREPO = -(8);
    GIT_EUNBORNBRANCH = -(9);
    GIT_EUNMERGED = -(10);
    GIT_ENONFASTFORWARD = -(11);
    GIT_EINVALIDSPEC = -(12);
    GIT_ECONFLICT = -(13);
    GIT_ELOCKED = -(14);
    GIT_EMODIFIED = -(15);
    GIT_EAUTH = -(16);
    GIT_ECERTIFICATE = -(17);
    GIT_EAPPLIED = -(18);
    GIT_EPEEL = -(19);
    GIT_EEOF = -(20);
    GIT_EINVALID = -(21);
    GIT_EUNCOMMITTED = -(22);
    GIT_EDIRECTORY = -(23);
    GIT_EMERGECONFLICT = -(24);
    GIT_PASSTHROUGH = -(30);
    GIT_ITEROVER = -(31);
    GIT_RETRY = -(32);
    GIT_EMISMATCH = -(33);
    GIT_EINDEXDIRTY = -(34);
    GIT_EAPPLYFAIL = -(35);

type
  git_error = record
      message : pcchar;
      klass : cint;
    end;

  git_error_t =  Longint;
  Const
    GIT_ERROR_NONE = 0;
    GIT_ERROR_NOMEMORY = 1;
    GIT_ERROR_OS = 2;
    GIT_ERROR_INVALID = 3;
    GIT_ERROR_REFERENCE = 4;
    GIT_ERROR_ZLIB = 5;
    GIT_ERROR_REPOSITORY = 6;
    GIT_ERROR_CONFIG = 7;
    GIT_ERROR_REGEX = 8;
    GIT_ERROR_ODB = 9;
    GIT_ERROR_INDEX = 10;
    GIT_ERROR_OBJECT = 11;
    GIT_ERROR_NET = 12;
    GIT_ERROR_TAG = 13;
    GIT_ERROR_TREE = 14;
    GIT_ERROR_INDEXER = 15;
    GIT_ERROR_SSL = 16;
    GIT_ERROR_SUBMODULE = 17;
    GIT_ERROR_THREAD = 18;
    GIT_ERROR_STASH = 19;
    GIT_ERROR_CHECKOUT = 20;
    GIT_ERROR_FETCHHEAD = 21;
    GIT_ERROR_MERGE = 22;
    GIT_ERROR_SSH = 23;
    GIT_ERROR_FILTER = 24;
    GIT_ERROR_REVERT = 25;
    GIT_ERROR_CALLBACK = 26;
    GIT_ERROR_CHERRYPICK = 27;
    GIT_ERROR_DESCRIBE = 28;
    GIT_ERROR_REBASE = 29;
    GIT_ERROR_FILESYSTEM = 30;
    GIT_ERROR_PATCH = 31;
    GIT_ERROR_WORKTREE = 32;
    GIT_ERROR_SHA1 = 33;
    GIT_ERROR_HTTP = 34;
    GIT_ERROR_INTERNAL = 35;


function git_error_last:Pgit_error;cdecl;external External_library name 'git_error_last';
procedure git_error_clear;cdecl;external External_library name 'git_error_clear';
function git_error_set_str(error_class:cint; _string:pcchar):cint;cdecl;external External_library name 'git_error_set_str';
procedure git_error_set_oom;cdecl;external External_library name 'git_error_set_oom';
type
  git_filter_mode_t =  Longint;
  Const
    GIT_FILTER_TO_WORKTREE = 0;
    GIT_FILTER_SMUDGE = GIT_FILTER_TO_WORKTREE;
    GIT_FILTER_TO_ODB = 1;
    GIT_FILTER_CLEAN = GIT_FILTER_TO_ODB;

type
  git_filter_flag_t =  Longint;
  Const
    GIT_FILTER_DEFAULT = 0;
    GIT_FILTER_ALLOW_UNSAFE = 1 shl 0;
    GIT_FILTER_NO_SYSTEM_ATTRIBUTES = 1 shl 1;
    GIT_FILTER_ATTRIBUTES_FROM_HEAD = 1 shl 2;



function git_filter_list_load(var filters:Pgit_filter_list; var repo:git_repository; var blob:git_blob; path:pcchar; mode:git_filter_mode_t; 
           flags:uint32_t):cint;cdecl;external External_library name 'git_filter_list_load';
function git_filter_list_contains(var filters:git_filter_list; name:pcchar):cint;cdecl;external External_library name 'git_filter_list_contains';
function git_filter_list_apply_to_data(var out:git_buf; var filters:git_filter_list; var in:git_buf):cint;cdecl;external External_library name 'git_filter_list_apply_to_data';
function git_filter_list_apply_to_file(var out:git_buf; var filters:git_filter_list; var repo:git_repository; path:pcchar):cint;cdecl;external External_library name 'git_filter_list_apply_to_file';
function git_filter_list_apply_to_blob(var out:git_buf; var filters:git_filter_list; var blob:git_blob):cint;cdecl;external External_library name 'git_filter_list_apply_to_blob';
function git_filter_list_stream_data(var filters:git_filter_list; var data:git_buf; var target:git_writestream):cint;cdecl;external External_library name 'git_filter_list_stream_data';
function git_filter_list_stream_file(var filters:git_filter_list; var repo:git_repository; path:pcchar; var target:git_writestream):cint;cdecl;external External_library name 'git_filter_list_stream_file';
function git_filter_list_stream_blob(var filters:git_filter_list; var blob:git_blob; var target:git_writestream):cint;cdecl;external External_library name 'git_filter_list_stream_blob';
procedure git_filter_list_free(var filters:git_filter_list);cdecl;external External_library name 'git_filter_list_free';
function git_libgit2_init:cint;cdecl;external External_library name 'git_libgit2_init';
function git_libgit2_shutdown:cint;cdecl;external External_library name 'git_libgit2_shutdown';
function git_graph_ahead_behind(var ahead:size_t; var behind:size_t; var repo:git_repository; var local:git_oid; var upstream:git_oid):cint;cdecl;external External_library name 'git_graph_ahead_behind';
function git_graph_descendant_of(var repo:git_repository; var commit:git_oid; var ancestor:git_oid):cint;cdecl;external External_library name 'git_graph_descendant_of';
function git_ignore_add_rule(var repo:git_repository; rules:pcchar):cint;cdecl;external External_library name 'git_ignore_add_rule';
function git_ignore_clear_internal_rules(var repo:git_repository):cint;cdecl;external External_library name 'git_ignore_clear_internal_rules';
function git_ignore_path_is_ignored(var ignored:cint; var repo:git_repository; path:pcchar):cint;cdecl;external External_library name 'git_ignore_path_is_ignored';
function git_mailmap_new(var out:Pgit_mailmap):cint;cdecl;external External_library name 'git_mailmap_new';
procedure git_mailmap_free(var mm:git_mailmap);cdecl;external External_library name 'git_mailmap_free';
function git_mailmap_add_entry(var mm:git_mailmap; real_name:pcchar; real_email:pcchar; replace_name:pcchar; replace_email:pcchar):cint;cdecl;external External_library name 'git_mailmap_add_entry';
function git_mailmap_from_buffer(var out:Pgit_mailmap; buf:pcchar; len:size_t):cint;cdecl;external External_library name 'git_mailmap_from_buffer';
function git_mailmap_from_repository(var out:Pgit_mailmap; var repo:git_repository):cint;cdecl;external External_library name 'git_mailmap_from_repository';
function git_mailmap_resolve(real_name:Ppcchar; real_email:Ppcchar; var mm:git_mailmap; name:pcchar; email:pcchar):cint;cdecl;external External_library name 'git_mailmap_resolve';
function git_mailmap_resolve_signature(var out:Pgit_signature; var mm:git_mailmap; var sig:git_signature):cint;cdecl;external External_library name 'git_mailmap_resolve_signature';
function git_message_prettify(var out:git_buf; message:pcchar; strip_comments:cint; comment_char:cchar):cint;cdecl;external External_library name 'git_message_prettify';
type
  git_message_trailer = record
      key : pcchar;
      value : pcchar;
    end;

  git_message_trailer_array = record
      trailers : Pgit_message_trailer;
      count : size_t;
      _trailer_block : pcchar;
    end;

function git_message_trailers(var arr:git_message_trailer_array; message:pcchar):cint;cdecl;external External_library name 'git_message_trailers';
procedure git_message_trailer_array_free(var arr:git_message_trailer_array);cdecl;external External_library name 'git_message_trailer_array_free';
type

  git_note_foreach_cb = function (var blob_id:git_oid; var annotated_object_id:git_oid; payload:pointer):cint;cdecl;
  git_iterator = git_note_iterator;

function git_note_iterator_new(var out:Pgit_note_iterator; var repo:git_repository; notes_ref:pcchar):cint;cdecl;external External_library name 'git_note_iterator_new';
function git_note_commit_iterator_new(var out:Pgit_note_iterator; var notes_commit:git_commit):cint;cdecl;external External_library name 'git_note_commit_iterator_new';
procedure git_note_iterator_free(var it:git_note_iterator);cdecl;external External_library name 'git_note_iterator_free';
function git_note_next(var note_id:git_oid; var annotated_id:git_oid; var it:git_note_iterator):cint;cdecl;external External_library name 'git_note_next';
function git_note_read(var out:Pgit_note; var repo:git_repository; notes_ref:pcchar; var oid:git_oid):cint;cdecl;external External_library name 'git_note_read';
function git_note_commit_read(var out:Pgit_note; var repo:git_repository; var notes_commit:git_commit; var oid:git_oid):cint;cdecl;external External_library name 'git_note_commit_read';
function git_note_author(var note:git_note):Pgit_signature;cdecl;external External_library name 'git_note_author';
function git_note_committer(var note:git_note):Pgit_signature;cdecl;external External_library name 'git_note_committer';
function git_note_message(var note:git_note):pcchar;cdecl;external External_library name 'git_note_message';
function git_note_id(var note:git_note):Pgit_oid;cdecl;external External_library name 'git_note_id';
function git_note_create(var out:git_oid; var repo:git_repository; notes_ref:pcchar; var author:git_signature; var committer:git_signature; 
           var oid:git_oid; note:pcchar; force:cint):cint;cdecl;external External_library name 'git_note_create';
function git_note_commit_create(var notes_commit_out:git_oid; var notes_blob_out:git_oid; var repo:git_repository; var parent:git_commit; var author:git_signature; 
           var committer:git_signature; var oid:git_oid; note:pcchar; allow_note_overwrite:cint):cint;cdecl;external External_library name 'git_note_commit_create';
function git_note_remove(var repo:git_repository; notes_ref:pcchar; var author:git_signature; var committer:git_signature; var oid:git_oid):cint;cdecl;external External_library name 'git_note_remove';
function git_note_commit_remove(var notes_commit_out:git_oid; var repo:git_repository; var notes_commit:git_commit; var author:git_signature; var committer:git_signature; 
           var oid:git_oid):cint;cdecl;external External_library name 'git_note_commit_remove';
procedure git_note_free(var note:git_note);cdecl;external External_library name 'git_note_free';
function git_note_default_ref(var out:git_buf; var repo:git_repository):cint;cdecl;external External_library name 'git_note_default_ref';
function git_note_foreach(var repo:git_repository; notes_ref:pcchar; note_cb:git_note_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_note_foreach';
type

  git_odb_foreach_cb = function (var id:git_oid; payload:pointer):cint;cdecl;

function git_odb_new(var out:Pgit_odb):cint;cdecl;external External_library name 'git_odb_new';
function git_odb_open(var out:Pgit_odb; objects_dir:pcchar):cint;cdecl;external External_library name 'git_odb_open';
function git_odb_add_disk_alternate(var odb:git_odb; path:pcchar):cint;cdecl;external External_library name 'git_odb_add_disk_alternate';
procedure git_odb_free(var db:git_odb);cdecl;external External_library name 'git_odb_free';
function git_odb_read(var out:Pgit_odb_object; var db:git_odb; var id:git_oid):cint;cdecl;external External_library name 'git_odb_read';
function git_odb_read_prefix(var out:Pgit_odb_object; var db:git_odb; var short_id:git_oid; len:size_t):cint;cdecl;external External_library name 'git_odb_read_prefix';
function git_odb_read_header(var len_out:size_t; var type_out:git_object_t; var db:git_odb; var id:git_oid):cint;cdecl;external External_library name 'git_odb_read_header';
function git_odb_exists(var db:git_odb; var id:git_oid):cint;cdecl;external External_library name 'git_odb_exists';
function git_odb_exists_prefix(var out:git_oid; var db:git_odb; var short_id:git_oid; len:size_t):cint;cdecl;external External_library name 'git_odb_exists_prefix';
type
  git_odb_expand_id = record
      id : git_oid;
      length : cushort;
      _type : git_object_t;
    end;

function git_odb_expand_ids(var db:git_odb; var ids:git_odb_expand_id; count:size_t):cint;cdecl;external External_library name 'git_odb_expand_ids';
function git_odb_refresh(var db:git_odb):cint;cdecl;external External_library name 'git_odb_refresh';
function git_odb_foreach(var db:git_odb; cb:git_odb_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_odb_foreach';
function git_odb_write(var out:git_oid; var odb:git_odb; data:pointer; len:size_t; _type:git_object_t):cint;cdecl;external External_library name 'git_odb_write';
function git_odb_open_wstream(var out:Pgit_odb_stream; var db:git_odb; size:git_object_size_t; _type:git_object_t):cint;cdecl;external External_library name 'git_odb_open_wstream';
function git_odb_stream_write(var stream:git_odb_stream; buffer:pcchar; len:size_t):cint;cdecl;external External_library name 'git_odb_stream_write';
function git_odb_stream_finalize_write(var out:git_oid; var stream:git_odb_stream):cint;cdecl;external External_library name 'git_odb_stream_finalize_write';
function git_odb_stream_read(var stream:git_odb_stream; buffer:pcchar; len:size_t):cint;cdecl;external External_library name 'git_odb_stream_read';
procedure git_odb_stream_free(var stream:git_odb_stream);cdecl;external External_library name 'git_odb_stream_free';
function git_odb_open_rstream(var out:Pgit_odb_stream; var len:size_t; var _type:git_object_t; var db:git_odb; var oid:git_oid):cint;cdecl;external External_library name 'git_odb_open_rstream';
function git_odb_write_pack(var out:Pgit_odb_writepack; var db:git_odb; progress_cb:git_indexer_progress_cb; progress_payload:pointer):cint;cdecl;external External_library name 'git_odb_write_pack';
function git_odb_hash(var out:git_oid; data:pointer; len:size_t; _type:git_object_t):cint;cdecl;external External_library name 'git_odb_hash';
function git_odb_hashfile(var out:git_oid; path:pcchar; _type:git_object_t):cint;cdecl;external External_library name 'git_odb_hashfile';
function git_odb_object_dup(var dest:Pgit_odb_object; var source:git_odb_object):cint;cdecl;external External_library name 'git_odb_object_dup';
procedure git_odb_object_free(var object:git_odb_object);cdecl;external External_library name 'git_odb_object_free';
function git_odb_object_id(var object:git_odb_object):Pgit_oid;cdecl;external External_library name 'git_odb_object_id';
function git_odb_object_data(var object:git_odb_object):pointer;cdecl;external External_library name 'git_odb_object_data';
function git_odb_object_size(var object:git_odb_object):size_t;cdecl;external External_library name 'git_odb_object_size';
function git_odb_object_type(var object:git_odb_object):git_object_t;cdecl;external External_library name 'git_odb_object_type';
function git_odb_add_backend(var odb:git_odb; var backend:git_odb_backend; priority:cint):cint;cdecl;external External_library name 'git_odb_add_backend';
function git_odb_add_alternate(var odb:git_odb; var backend:git_odb_backend; priority:cint):cint;cdecl;external External_library name 'git_odb_add_alternate';
function git_odb_num_backends(var odb:git_odb):size_t;cdecl;external External_library name 'git_odb_num_backends';
function git_odb_get_backend(var out:Pgit_odb_backend; var odb:git_odb; pos:size_t):cint;cdecl;external External_library name 'git_odb_get_backend';
function git_odb_backend_pack(var out:Pgit_odb_backend; objects_dir:pcchar):cint;cdecl;external External_library name 'git_odb_backend_pack';
function git_odb_backend_loose(var out:Pgit_odb_backend; objects_dir:pcchar; compression_level:cint; do_fsync:cint; dir_mode:cuint; 
           file_mode:cuint):cint;cdecl;external External_library name 'git_odb_backend_loose';
function git_odb_backend_one_pack(var out:Pgit_odb_backend; index_file:pcchar):cint;cdecl;external External_library name 'git_odb_backend_one_pack';
type
  git_odb_stream_t =  Longint;
  Const
    GIT_STREAM_RDONLY = 1 shl 1;
    GIT_STREAM_WRONLY = 1 shl 2;
    GIT_STREAM_RW = GIT_STREAM_RDONLY or GIT_STREAM_WRONLY;

type
  git_odb_stream = record
      backend : Pgit_odb_backend;
      mode : cuint;
      hash_ctx : pointer;
      declared_size : git_object_size_t;
      received_bytes : git_object_size_t;
      read : TFunctionVarStreamGit_odb_streamBufferPccharLenSize_tCint;cdecl;
      write : TFunctionVarStreamGit_odb_streamBufferPccharLenSize_tCint;cdecl;
      finalize_write : TFunctionVarStreamGit_odb_streamVarOidGit_oidCint;cdecl;
      free : TProcedureVarStreamGit_odb_stream;cdecl;
    end;
type
  TProcedureVarStreamGit_odb_stream = procedure (var stream:git_odb_stream);
type
  TFunctionVarStreamGit_odb_streamBufferPccharLenSize_tCint = function (var stream:git_odb_stream; buffer:pcchar; len:size_t):cint;

  git_odb_writepack = record
      backend : Pgit_odb_backend;
      append : TFunctionVarWritepackGit_odb_writepackDataPointerSizeSize_tVarStatsGit_indexer_progressCint;cdecl;
      commit : TFunctionVarWritepackGit_odb_writepackVarStatsGit_indexer_progressCint;cdecl;
      free : TProcedureVarWritepackGit_odb_writepack;cdecl;
    end;
type
  TProcedureVarWritepackGit_odb_writepack = procedure (var writepack:git_odb_writepack);


function git_patch_from_diff(var out:Pgit_patch; var diff:git_diff; idx:size_t):cint;cdecl;external External_library name 'git_patch_from_diff';
function git_patch_from_blobs(var out:Pgit_patch; var old_blob:git_blob; old_as_path:pcchar; var new_blob:git_blob; new_as_path:pcchar; 
           var opts:git_diff_options):cint;cdecl;external External_library name 'git_patch_from_blobs';
function git_patch_from_blob_and_buffer(var out:Pgit_patch; var old_blob:git_blob; old_as_path:pcchar; buffer:pointer; buffer_len:size_t; 
           buffer_as_path:pcchar; var opts:git_diff_options):cint;cdecl;external External_library name 'git_patch_from_blob_and_buffer';
function git_patch_from_buffers(var out:Pgit_patch; old_buffer:pointer; old_len:size_t; old_as_path:pcchar; new_buffer:pointer; 
           new_len:size_t; new_as_path:pcchar; var opts:git_diff_options):cint;cdecl;external External_library name 'git_patch_from_buffers';
procedure git_patch_free(var patch:git_patch);cdecl;external External_library name 'git_patch_free';
function git_patch_get_delta(var patch:git_patch):Pgit_diff_delta;cdecl;external External_library name 'git_patch_get_delta';
function git_patch_num_hunks(var patch:git_patch):size_t;cdecl;external External_library name 'git_patch_num_hunks';
function git_patch_line_stats(var total_context:size_t; var total_additions:size_t; var total_deletions:size_t; var patch:git_patch):cint;cdecl;external External_library name 'git_patch_line_stats';
function git_patch_get_hunk(var out:Pgit_diff_hunk; var lines_in_hunk:size_t; var patch:git_patch; hunk_idx:size_t):cint;cdecl;external External_library name 'git_patch_get_hunk';
function git_patch_num_lines_in_hunk(var patch:git_patch; hunk_idx:size_t):cint;cdecl;external External_library name 'git_patch_num_lines_in_hunk';
function git_patch_get_line_in_hunk(var out:Pgit_diff_line; var patch:git_patch; hunk_idx:size_t; line_of_hunk:size_t):cint;cdecl;external External_library name 'git_patch_get_line_in_hunk';
function git_patch_size(var patch:git_patch; include_context:cint; include_hunk_headers:cint; include_file_headers:cint):size_t;cdecl;external External_library name 'git_patch_size';
function git_patch_print(var patch:git_patch; print_cb:git_diff_line_cb; payload:pointer):cint;cdecl;external External_library name 'git_patch_print';
function git_patch_to_buf(var out:git_buf; var patch:git_patch):cint;cdecl;external External_library name 'git_patch_to_buf';
type

  git_pathspec_flag_t =  Longint;
  Const
    GIT_PATHSPEC_DEFAULT = 0;
    GIT_PATHSPEC_IGNORE_CASE = 1 shl 0;
    GIT_PATHSPEC_USE_CASE = 1 shl 1;
    GIT_PATHSPEC_NO_GLOB = 1 shl 2;
    GIT_PATHSPEC_NO_MATCH_ERROR = 1 shl 3;
    GIT_PATHSPEC_FIND_FAILURES = 1 shl 4;
    GIT_PATHSPEC_FAILURES_ONLY = 1 shl 5;


function git_pathspec_new(var out:Pgit_pathspec; var pathspec:git_strarray):cint;cdecl;external External_library name 'git_pathspec_new';
procedure git_pathspec_free(var ps:git_pathspec);cdecl;external External_library name 'git_pathspec_free';
function git_pathspec_matches_path(var ps:git_pathspec; flags:uint32_t; path:pcchar):cint;cdecl;external External_library name 'git_pathspec_matches_path';
function git_pathspec_match_workdir(var out:Pgit_pathspec_match_list; var repo:git_repository; flags:uint32_t; var ps:git_pathspec):cint;cdecl;external External_library name 'git_pathspec_match_workdir';
function git_pathspec_match_index(var out:Pgit_pathspec_match_list; var index:git_index; flags:uint32_t; var ps:git_pathspec):cint;cdecl;external External_library name 'git_pathspec_match_index';
function git_pathspec_match_tree(var out:Pgit_pathspec_match_list; var tree:git_tree; flags:uint32_t; var ps:git_pathspec):cint;cdecl;external External_library name 'git_pathspec_match_tree';
function git_pathspec_match_diff(var out:Pgit_pathspec_match_list; var diff:git_diff; flags:uint32_t; var ps:git_pathspec):cint;cdecl;external External_library name 'git_pathspec_match_diff';
procedure git_pathspec_match_list_free(var m:git_pathspec_match_list);cdecl;external External_library name 'git_pathspec_match_list_free';
function git_pathspec_match_list_entrycount(var m:git_pathspec_match_list):size_t;cdecl;external External_library name 'git_pathspec_match_list_entrycount';
function git_pathspec_match_list_entry(var m:git_pathspec_match_list; pos:size_t):pcchar;cdecl;external External_library name 'git_pathspec_match_list_entry';
function git_pathspec_match_list_diff_entry(var m:git_pathspec_match_list; pos:size_t):Pgit_diff_delta;cdecl;external External_library name 'git_pathspec_match_list_diff_entry';
function git_pathspec_match_list_failed_entrycount(var m:git_pathspec_match_list):size_t;cdecl;external External_library name 'git_pathspec_match_list_failed_entrycount';
function git_pathspec_match_list_failed_entry(var m:git_pathspec_match_list; pos:size_t):pcchar;cdecl;external External_library name 'git_pathspec_match_list_failed_entry';
type
  git_rebase_options = record
      version : cuint;
      quiet : cint;
      inmemory : cint;
      rewrite_notes_ref : pcchar;
      merge_options : git_merge_options;
      checkout_options : git_checkout_options;
      signing_cb : git_commit_signing_cb;
      payload : pointer;
    end;

  git_rebase_operation_t =  Longint;
  Const
    GIT_REBASE_OPERATION_PICK = 0;
    GIT_REBASE_OPERATION_REWORD = 1;
    GIT_REBASE_OPERATION_EDIT = 2;
    GIT_REBASE_OPERATION_SQUASH = 3;
    GIT_REBASE_OPERATION_FIXUP = 4;
    GIT_REBASE_OPERATION_EXEC = 5;

type
  git_rebase_operation = record
      _type : git_rebase_operation_t;
      id : git_oid;
      exec : pcchar;
    end;

function git_rebase_options_init(var opts:git_rebase_options; version:cuint):cint;cdecl;external External_library name 'git_rebase_options_init';
function git_rebase_init(var out:Pgit_rebase; var repo:git_repository; var branch:git_annotated_commit; var upstream:git_annotated_commit; var onto:git_annotated_commit; 
           var opts:git_rebase_options):cint;cdecl;external External_library name 'git_rebase_init';
function git_rebase_open(var out:Pgit_rebase; var repo:git_repository; var opts:git_rebase_options):cint;cdecl;external External_library name 'git_rebase_open';
function git_rebase_orig_head_name(var rebase:git_rebase):pcchar;cdecl;external External_library name 'git_rebase_orig_head_name';
function git_rebase_orig_head_id(var rebase:git_rebase):Pgit_oid;cdecl;external External_library name 'git_rebase_orig_head_id';
function git_rebase_onto_name(var rebase:git_rebase):pcchar;cdecl;external External_library name 'git_rebase_onto_name';
function git_rebase_onto_id(var rebase:git_rebase):Pgit_oid;cdecl;external External_library name 'git_rebase_onto_id';
function git_rebase_operation_entrycount(var rebase:git_rebase):size_t;cdecl;external External_library name 'git_rebase_operation_entrycount';
function git_rebase_operation_current(var rebase:git_rebase):size_t;cdecl;external External_library name 'git_rebase_operation_current';
function git_rebase_operation_byindex(var rebase:git_rebase; idx:size_t):Pgit_rebase_operation;cdecl;external External_library name 'git_rebase_operation_byindex';
function git_rebase_next(var operation:Pgit_rebase_operation; var rebase:git_rebase):cint;cdecl;external External_library name 'git_rebase_next';
function git_rebase_inmemory_index(var index:Pgit_index; var rebase:git_rebase):cint;cdecl;external External_library name 'git_rebase_inmemory_index';
function git_rebase_commit(var id:git_oid; var rebase:git_rebase; var author:git_signature; var committer:git_signature; message_encoding:pcchar; 
           message:pcchar):cint;cdecl;external External_library name 'git_rebase_commit';
function git_rebase_abort(var rebase:git_rebase):cint;cdecl;external External_library name 'git_rebase_abort';
function git_rebase_finish(var rebase:git_rebase; var signature:git_signature):cint;cdecl;external External_library name 'git_rebase_finish';
procedure git_rebase_free(var rebase:git_rebase);cdecl;external External_library name 'git_rebase_free';
function git_refdb_new(var out:Pgit_refdb; var repo:git_repository):cint;cdecl;external External_library name 'git_refdb_new';
function git_refdb_open(var out:Pgit_refdb; var repo:git_repository):cint;cdecl;external External_library name 'git_refdb_open';
function git_refdb_compress(var refdb:git_refdb):cint;cdecl;external External_library name 'git_refdb_compress';
procedure git_refdb_free(var refdb:git_refdb);cdecl;external External_library name 'git_refdb_free';
function git_reflog_read(var out:Pgit_reflog; var repo:git_repository; name:pcchar):cint;cdecl;external External_library name 'git_reflog_read';
function git_reflog_write(var reflog:git_reflog):cint;cdecl;external External_library name 'git_reflog_write';
function git_reflog_append(var reflog:git_reflog; var id:git_oid; var committer:git_signature; msg:pcchar):cint;cdecl;external External_library name 'git_reflog_append';
function git_reflog_rename(var repo:git_repository; old_name:pcchar; name:pcchar):cint;cdecl;external External_library name 'git_reflog_rename';
function git_reflog_delete(var repo:git_repository; name:pcchar):cint;cdecl;external External_library name 'git_reflog_delete';
function git_reflog_entrycount(var reflog:git_reflog):size_t;cdecl;external External_library name 'git_reflog_entrycount';
function git_reflog_entry_byindex(var reflog:git_reflog; idx:size_t):Pgit_reflog_entry;cdecl;external External_library name 'git_reflog_entry_byindex';
function git_reflog_drop(var reflog:git_reflog; idx:size_t; rewrite_previous_entry:cint):cint;cdecl;external External_library name 'git_reflog_drop';
function git_reflog_entry_id_old(var entry:git_reflog_entry):Pgit_oid;cdecl;external External_library name 'git_reflog_entry_id_old';
function git_reflog_entry_id_new(var entry:git_reflog_entry):Pgit_oid;cdecl;external External_library name 'git_reflog_entry_id_new';
function git_reflog_entry_committer(var entry:git_reflog_entry):Pgit_signature;cdecl;external External_library name 'git_reflog_entry_committer';
function git_reflog_entry_message(var entry:git_reflog_entry):pcchar;cdecl;external External_library name 'git_reflog_entry_message';
procedure git_reflog_free(var reflog:git_reflog);cdecl;external External_library name 'git_reflog_free';
type
  git_reset_t =  Longint;
  Const
    GIT_RESET_SOFT = 1;
    GIT_RESET_MIXED = 2;
    GIT_RESET_HARD = 3;


function git_reset(var repo:git_repository; var target:git_object; reset_type:git_reset_t; var checkout_opts:git_checkout_options):cint;cdecl;external External_library name 'git_reset';
function git_reset_from_annotated(var repo:git_repository; var commit:git_annotated_commit; reset_type:git_reset_t; var checkout_opts:git_checkout_options):cint;cdecl;external External_library name 'git_reset_from_annotated';
function git_reset_default(var repo:git_repository; var target:git_object; var pathspecs:git_strarray):cint;cdecl;external External_library name 'git_reset_default';
type
  git_revert_options = record
      version : cuint;
      mainline : cuint;
      merge_opts : git_merge_options;
      checkout_opts : git_checkout_options;
    end;

function git_revert_options_init(var opts:git_revert_options; version:cuint):cint;cdecl;external External_library name 'git_revert_options_init';
function git_revert_commit(var out:Pgit_index; var repo:git_repository; var revert_commit:git_commit; var our_commit:git_commit; mainline:cuint; 
           var merge_options:git_merge_options):cint;cdecl;external External_library name 'git_revert_commit';
function git_revert(var repo:git_repository; var commit:git_commit; var given_opts:git_revert_options):cint;cdecl;external External_library name 'git_revert';
function git_revparse_single(var out:Pgit_object; var repo:git_repository; spec:pcchar):cint;cdecl;external External_library name 'git_revparse_single';
function git_revparse_ext(var object_out:Pgit_object; var reference_out:Pgit_reference; var repo:git_repository; spec:pcchar):cint;cdecl;external External_library name 'git_revparse_ext';
type
  git_revparse_mode_t =  Longint;
  Const
    GIT_REVPARSE_SINGLE = 1 shl 0;
    GIT_REVPARSE_RANGE = 1 shl 1;
    GIT_REVPARSE_MERGE_BASE = 1 shl 2;

type
  git_revspec = record
      from : Pgit_object;
      to : Pgit_object;
      flags : cuint;
    end;

function git_revparse(var revspec:git_revspec; var repo:git_repository; spec:pcchar):cint;cdecl;external External_library name 'git_revparse';
type
  git_sort_t =  Longint;
  Const
    GIT_SORT_NONE = 0;
    GIT_SORT_TOPOLOGICAL = 1 shl 0;
    GIT_SORT_TIME = 1 shl 1;
    GIT_SORT_REVERSE = 1 shl 2;


function git_revwalk_new(var out:Pgit_revwalk; var repo:git_repository):cint;cdecl;external External_library name 'git_revwalk_new';
function git_revwalk_reset(var walker:git_revwalk):cint;cdecl;external External_library name 'git_revwalk_reset';
function git_revwalk_push(var walk:git_revwalk; var id:git_oid):cint;cdecl;external External_library name 'git_revwalk_push';
function git_revwalk_push_glob(var walk:git_revwalk; glob:pcchar):cint;cdecl;external External_library name 'git_revwalk_push_glob';
function git_revwalk_push_head(var walk:git_revwalk):cint;cdecl;external External_library name 'git_revwalk_push_head';
function git_revwalk_hide(var walk:git_revwalk; var commit_id:git_oid):cint;cdecl;external External_library name 'git_revwalk_hide';
function git_revwalk_hide_glob(var walk:git_revwalk; glob:pcchar):cint;cdecl;external External_library name 'git_revwalk_hide_glob';
function git_revwalk_hide_head(var walk:git_revwalk):cint;cdecl;external External_library name 'git_revwalk_hide_head';
function git_revwalk_push_ref(var walk:git_revwalk; refname:pcchar):cint;cdecl;external External_library name 'git_revwalk_push_ref';
function git_revwalk_hide_ref(var walk:git_revwalk; refname:pcchar):cint;cdecl;external External_library name 'git_revwalk_hide_ref';
function git_revwalk_next(var out:git_oid; var walk:git_revwalk):cint;cdecl;external External_library name 'git_revwalk_next';
function git_revwalk_sorting(var walk:git_revwalk; sort_mode:cuint):cint;cdecl;external External_library name 'git_revwalk_sorting';
function git_revwalk_push_range(var walk:git_revwalk; range:pcchar):cint;cdecl;external External_library name 'git_revwalk_push_range';
function git_revwalk_simplify_first_parent(var walk:git_revwalk):cint;cdecl;external External_library name 'git_revwalk_simplify_first_parent';
procedure git_revwalk_free(var walk:git_revwalk);cdecl;external External_library name 'git_revwalk_free';
function git_revwalk_repository(var walk:git_revwalk):Pgit_repository;cdecl;external External_library name 'git_revwalk_repository';
type

  git_revwalk_hide_cb = function (var commit_id:git_oid; payload:pointer):cint;cdecl;

function git_revwalk_add_hide_cb(var walk:git_revwalk; hide_cb:git_revwalk_hide_cb; payload:pointer):cint;cdecl;external External_library name 'git_revwalk_add_hide_cb';
function git_signature_new(var out:Pgit_signature; name:pcchar; email:pcchar; time:git_time_t; offset:cint):cint;cdecl;external External_library name 'git_signature_new';
function git_signature_now(var out:Pgit_signature; name:pcchar; email:pcchar):cint;cdecl;external External_library name 'git_signature_now';
function git_signature_default(var out:Pgit_signature; var repo:git_repository):cint;cdecl;external External_library name 'git_signature_default';
function git_signature_from_buffer(var out:Pgit_signature; buf:pcchar):cint;cdecl;external External_library name 'git_signature_from_buffer';
function git_signature_dup(var dest:Pgit_signature; var sig:git_signature):cint;cdecl;external External_library name 'git_signature_dup';
procedure git_signature_free(var sig:git_signature);cdecl;external External_library name 'git_signature_free';
type
  git_stash_flags =  Longint;
  Const
    GIT_STASH_DEFAULT = 0;
    GIT_STASH_KEEP_INDEX = 1 shl 0;
    GIT_STASH_INCLUDE_UNTRACKED = 1 shl 1;
    GIT_STASH_INCLUDE_IGNORED = 1 shl 2;


function git_stash_save(var out:git_oid; var repo:git_repository; var stasher:git_signature; message:pcchar; flags:uint32_t):cint;cdecl;external External_library name 'git_stash_save';
type
  git_stash_apply_flags =  Longint;
  Const
    GIT_STASH_APPLY_DEFAULT = 0;
    GIT_STASH_APPLY_REINSTATE_INDEX = 1 shl 0;

type
  git_stash_apply_progress_t =  Longint;
  Const
    GIT_STASH_APPLY_PROGRESS_NONE = 0;
    GIT_STASH_APPLY_PROGRESS_LOADING_STASH = 1;
    GIT_STASH_APPLY_PROGRESS_ANALYZE_INDEX = 2;
    GIT_STASH_APPLY_PROGRESS_ANALYZE_MODIFIED = 3;
    GIT_STASH_APPLY_PROGRESS_ANALYZE_UNTRACKED = 4;
    GIT_STASH_APPLY_PROGRESS_CHECKOUT_UNTRACKED = 5;
    GIT_STASH_APPLY_PROGRESS_CHECKOUT_MODIFIED = 6;
    GIT_STASH_APPLY_PROGRESS_DONE = 7;

type

  git_stash_apply_progress_cb = function (progress:git_stash_apply_progress_t; payload:pointer):cint;cdecl;

  git_stash_apply_options = record
      version : cuint;
      flags : uint32_t;
      checkout_options : git_checkout_options;
      progress_cb : git_stash_apply_progress_cb;
      progress_payload : pointer;
    end;

function git_stash_apply_options_init(var opts:git_stash_apply_options; version:cuint):cint;cdecl;external External_library name 'git_stash_apply_options_init';
function git_stash_apply(var repo:git_repository; index:size_t; var options:git_stash_apply_options):cint;cdecl;external External_library name 'git_stash_apply';
type

  git_stash_cb = function (index:size_t; message:pcchar; var stash_id:git_oid; payload:pointer):cint;cdecl;

function git_stash_foreach(var repo:git_repository; callback:git_stash_cb; payload:pointer):cint;cdecl;external External_library name 'git_stash_foreach';
function git_stash_drop(var repo:git_repository; index:size_t):cint;cdecl;external External_library name 'git_stash_drop';
function git_stash_pop(var repo:git_repository; index:size_t; var options:git_stash_apply_options):cint;cdecl;external External_library name 'git_stash_pop';
type
  git_status_t =  Longint;
  Const
    GIT_STATUS_CURRENT = 0;
    GIT_STATUS_INDEX_NEW = 1 shl 0;
    GIT_STATUS_INDEX_MODIFIED = 1 shl 1;
    GIT_STATUS_INDEX_DELETED = 1 shl 2;
    GIT_STATUS_INDEX_RENAMED = 1 shl 3;
    GIT_STATUS_INDEX_TYPECHANGE = 1 shl 4;
    GIT_STATUS_WT_NEW = 1 shl 7;
    GIT_STATUS_WT_MODIFIED = 1 shl 8;
    GIT_STATUS_WT_DELETED = 1 shl 9;
    GIT_STATUS_WT_TYPECHANGE = 1 shl 10;
    GIT_STATUS_WT_RENAMED = 1 shl 11;
    GIT_STATUS_WT_UNREADABLE = 1 shl 12;
    GIT_STATUS_IGNORED = 1 shl 14;
    GIT_STATUS_CONFLICTED = 1 shl 15;

type

  git_status_cb = function (path:pcchar; status_flags:cuint; payload:pointer):cint;cdecl;

  git_status_show_t =  Longint;
  Const
    GIT_STATUS_SHOW_INDEX_AND_WORKDIR = 0;
    GIT_STATUS_SHOW_INDEX_ONLY = 1;
    GIT_STATUS_SHOW_WORKDIR_ONLY = 2;

type
  git_status_opt_t =  Longint;
  Const
    GIT_STATUS_OPT_INCLUDE_UNTRACKED = 1 shl 0;
    GIT_STATUS_OPT_INCLUDE_IGNORED = 1 shl 1;
    GIT_STATUS_OPT_INCLUDE_UNMODIFIED = 1 shl 2;
    GIT_STATUS_OPT_EXCLUDE_SUBMODULES = 1 shl 3;
    GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS = 1 shl 4;
    GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH = 1 shl 5;
    GIT_STATUS_OPT_RECURSE_IGNORED_DIRS = 1 shl 6;
    GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX = 1 shl 7;
    GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR = 1 shl 8;
    GIT_STATUS_OPT_SORT_CASE_SENSITIVELY = 1 shl 9;
    GIT_STATUS_OPT_SORT_CASE_INSENSITIVELY = 1 shl 10;
    GIT_STATUS_OPT_RENAMES_FROM_REWRITES = 1 shl 11;
    GIT_STATUS_OPT_NO_REFRESH = 1 shl 12;
    GIT_STATUS_OPT_UPDATE_INDEX = 1 shl 13;
    GIT_STATUS_OPT_INCLUDE_UNREADABLE = 1 shl 14;
    GIT_STATUS_OPT_INCLUDE_UNREADABLE_AS_UNTRACKED = 1 shl 15;

type
  git_status_options = record
      version : cuint;
      show : git_status_show_t;
      flags : cuint;
      pathspec : git_strarray;
      baseline : Pgit_tree;
    end;

function git_status_options_init(var opts:git_status_options; version:cuint):cint;cdecl;external External_library name 'git_status_options_init';
type
  git_status_entry = record
      status : git_status_t;
      head_to_index : Pgit_diff_delta;
      index_to_workdir : Pgit_diff_delta;
    end;

function git_status_foreach(var repo:git_repository; callback:git_status_cb; payload:pointer):cint;cdecl;external External_library name 'git_status_foreach';
function git_status_foreach_ext(var repo:git_repository; var opts:git_status_options; callback:git_status_cb; payload:pointer):cint;cdecl;external External_library name 'git_status_foreach_ext';
function git_status_file(var status_flags:cuint; var repo:git_repository; path:pcchar):cint;cdecl;external External_library name 'git_status_file';
function git_status_list_new(var out:Pgit_status_list; var repo:git_repository; var opts:git_status_options):cint;cdecl;external External_library name 'git_status_list_new';
function git_status_list_entrycount(var statuslist:git_status_list):size_t;cdecl;external External_library name 'git_status_list_entrycount';
function git_status_byindex(var statuslist:git_status_list; idx:size_t):Pgit_status_entry;cdecl;external External_library name 'git_status_byindex';
procedure git_status_list_free(var statuslist:git_status_list);cdecl;external External_library name 'git_status_list_free';
function git_status_should_ignore(var ignored:cint; var repo:git_repository; path:pcchar):cint;cdecl;external External_library name 'git_status_should_ignore';
type
  git_submodule_status_t =  Longint;
  Const
    GIT_SUBMODULE_STATUS_IN_HEAD = 1 shl 0;
    GIT_SUBMODULE_STATUS_IN_INDEX = 1 shl 1;
    GIT_SUBMODULE_STATUS_IN_CONFIG = 1 shl 2;
    GIT_SUBMODULE_STATUS_IN_WD = 1 shl 3;
    GIT_SUBMODULE_STATUS_INDEX_ADDED = 1 shl 4;
    GIT_SUBMODULE_STATUS_INDEX_DELETED = 1 shl 5;
    GIT_SUBMODULE_STATUS_INDEX_MODIFIED = 1 shl 6;
    GIT_SUBMODULE_STATUS_WD_UNINITIALIZED = 1 shl 7;
    GIT_SUBMODULE_STATUS_WD_ADDED = 1 shl 8;
    GIT_SUBMODULE_STATUS_WD_DELETED = 1 shl 9;
    GIT_SUBMODULE_STATUS_WD_MODIFIED = 1 shl 10;
    GIT_SUBMODULE_STATUS_WD_INDEX_MODIFIED = 1 shl 11;
    GIT_SUBMODULE_STATUS_WD_WD_MODIFIED = 1 shl 12;
    GIT_SUBMODULE_STATUS_WD_UNTRACKED = 1 shl 13;

type

  git_submodule_cb = function (var sm:git_submodule; name:pcchar; payload:pointer):cint;cdecl;

  git_submodule_update_options = record
      version : cuint;
      checkout_opts : git_checkout_options;
      fetch_opts : git_fetch_options;
      allow_fetch : cint;
    end;

function git_submodule_update_options_init(var opts:git_submodule_update_options; version:cuint):cint;cdecl;external External_library name 'git_submodule_update_options_init';
function git_submodule_update(var submodule:git_submodule; init:cint; var options:git_submodule_update_options):cint;cdecl;external External_library name 'git_submodule_update';
function git_submodule_lookup(var out:Pgit_submodule; var repo:git_repository; name:pcchar):cint;cdecl;external External_library name 'git_submodule_lookup';
procedure git_submodule_free(var submodule:git_submodule);cdecl;external External_library name 'git_submodule_free';
function git_submodule_foreach(var repo:git_repository; callback:git_submodule_cb; payload:pointer):cint;cdecl;external External_library name 'git_submodule_foreach';
function git_submodule_add_setup(var out:Pgit_submodule; var repo:git_repository; url:pcchar; path:pcchar; use_gitlink:cint):cint;cdecl;external External_library name 'git_submodule_add_setup';
function git_submodule_clone(var out:Pgit_repository; var submodule:git_submodule; var opts:git_submodule_update_options):cint;cdecl;external External_library name 'git_submodule_clone';
function git_submodule_add_finalize(var submodule:git_submodule):cint;cdecl;external External_library name 'git_submodule_add_finalize';
function git_submodule_add_to_index(var submodule:git_submodule; write_index:cint):cint;cdecl;external External_library name 'git_submodule_add_to_index';
function git_submodule_owner(var submodule:git_submodule):Pgit_repository;cdecl;external External_library name 'git_submodule_owner';
function git_submodule_name(var submodule:git_submodule):pcchar;cdecl;external External_library name 'git_submodule_name';
function git_submodule_path(var submodule:git_submodule):pcchar;cdecl;external External_library name 'git_submodule_path';
function git_submodule_url(var submodule:git_submodule):pcchar;cdecl;external External_library name 'git_submodule_url';
function git_submodule_resolve_url(var out:git_buf; var repo:git_repository; url:pcchar):cint;cdecl;external External_library name 'git_submodule_resolve_url';
function git_submodule_branch(var submodule:git_submodule):pcchar;cdecl;external External_library name 'git_submodule_branch';
function git_submodule_set_branch(var repo:git_repository; name:pcchar; branch:pcchar):cint;cdecl;external External_library name 'git_submodule_set_branch';
function git_submodule_set_url(var repo:git_repository; name:pcchar; url:pcchar):cint;cdecl;external External_library name 'git_submodule_set_url';
function git_submodule_index_id(var submodule:git_submodule):Pgit_oid;cdecl;external External_library name 'git_submodule_index_id';
function git_submodule_head_id(var submodule:git_submodule):Pgit_oid;cdecl;external External_library name 'git_submodule_head_id';
function git_submodule_wd_id(var submodule:git_submodule):Pgit_oid;cdecl;external External_library name 'git_submodule_wd_id';
function git_submodule_ignore(var submodule:git_submodule):git_submodule_ignore_t;cdecl;external External_library name 'git_submodule_ignore';
function git_submodule_set_ignore(var repo:git_repository; name:pcchar; ignore:git_submodule_ignore_t):cint;cdecl;external External_library name 'git_submodule_set_ignore';
function git_submodule_update_strategy(var submodule:git_submodule):git_submodule_update_t;cdecl;external External_library name 'git_submodule_update_strategy';
function git_submodule_set_update(var repo:git_repository; name:pcchar; update:git_submodule_update_t):cint;cdecl;external External_library name 'git_submodule_set_update';
function git_submodule_fetch_recurse_submodules(var submodule:git_submodule):git_submodule_recurse_t;cdecl;external External_library name 'git_submodule_fetch_recurse_submodules';
function git_submodule_set_fetch_recurse_submodules(var repo:git_repository; name:pcchar; fetch_recurse_submodules:git_submodule_recurse_t):cint;cdecl;external External_library name 'git_submodule_set_fetch_recurse_submodules';
function git_submodule_init(var submodule:git_submodule; overwrite:cint):cint;cdecl;external External_library name 'git_submodule_init';
function git_submodule_repo_init(var out:Pgit_repository; var sm:git_submodule; use_gitlink:cint):cint;cdecl;external External_library name 'git_submodule_repo_init';
function git_submodule_sync(var submodule:git_submodule):cint;cdecl;external External_library name 'git_submodule_sync';
function git_submodule_open(var repo:Pgit_repository; var submodule:git_submodule):cint;cdecl;external External_library name 'git_submodule_open';
function git_submodule_reload(var submodule:git_submodule; force:cint):cint;cdecl;external External_library name 'git_submodule_reload';
function git_submodule_status(var status:cuint; var repo:git_repository; name:pcchar; ignore:git_submodule_ignore_t):cint;cdecl;external External_library name 'git_submodule_status';
function git_submodule_location(var location_status:cuint; var submodule:git_submodule):cint;cdecl;external External_library name 'git_submodule_location';
function git_tag_lookup(var out:Pgit_tag; var repo:git_repository; var id:git_oid):cint;cdecl;external External_library name 'git_tag_lookup';
function git_tag_lookup_prefix(var out:Pgit_tag; var repo:git_repository; var id:git_oid; len:size_t):cint;cdecl;external External_library name 'git_tag_lookup_prefix';
procedure git_tag_free(var tag:git_tag);cdecl;external External_library name 'git_tag_free';
function git_tag_id(var tag:git_tag):Pgit_oid;cdecl;external External_library name 'git_tag_id';
function git_tag_owner(var tag:git_tag):Pgit_repository;cdecl;external External_library name 'git_tag_owner';
function git_tag_target(var target_out:Pgit_object; var tag:git_tag):cint;cdecl;external External_library name 'git_tag_target';
function git_tag_target_id(var tag:git_tag):Pgit_oid;cdecl;external External_library name 'git_tag_target_id';
function git_tag_target_type(var tag:git_tag):git_object_t;cdecl;external External_library name 'git_tag_target_type';
function git_tag_name(var tag:git_tag):pcchar;cdecl;external External_library name 'git_tag_name';
function git_tag_tagger(var tag:git_tag):Pgit_signature;cdecl;external External_library name 'git_tag_tagger';
function git_tag_message(var tag:git_tag):pcchar;cdecl;external External_library name 'git_tag_message';
function git_tag_create(var oid:git_oid; var repo:git_repository; tag_name:pcchar; var target:git_object; var tagger:git_signature; 
           message:pcchar; force:cint):cint;cdecl;external External_library name 'git_tag_create';
function git_tag_annotation_create(var oid:git_oid; var repo:git_repository; tag_name:pcchar; var target:git_object; var tagger:git_signature; 
           message:pcchar):cint;cdecl;external External_library name 'git_tag_annotation_create';
function git_tag_create_from_buffer(var oid:git_oid; var repo:git_repository; buffer:pcchar; force:cint):cint;cdecl;external External_library name 'git_tag_create_from_buffer';
function git_tag_create_lightweight(var oid:git_oid; var repo:git_repository; tag_name:pcchar; var target:git_object; force:cint):cint;cdecl;external External_library name 'git_tag_create_lightweight';
function git_tag_delete(var repo:git_repository; tag_name:pcchar):cint;cdecl;external External_library name 'git_tag_delete';
function git_tag_list(var tag_names:git_strarray; var repo:git_repository):cint;cdecl;external External_library name 'git_tag_list';
function git_tag_list_match(var tag_names:git_strarray; pattern:pcchar; var repo:git_repository):cint;cdecl;external External_library name 'git_tag_list_match';
type

  git_tag_foreach_cb = function (name:pcchar; var oid:git_oid; payload:pointer):cint;cdecl;

function git_tag_foreach(var repo:git_repository; callback:git_tag_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_tag_foreach';
function git_tag_peel(var tag_target_out:Pgit_object; var tag:git_tag):cint;cdecl;external External_library name 'git_tag_peel';
function git_tag_dup(var out:Pgit_tag; var source:git_tag):cint;cdecl;external External_library name 'git_tag_dup';
function git_transaction_new(var out:Pgit_transaction; var repo:git_repository):cint;cdecl;external External_library name 'git_transaction_new';
function git_transaction_lock_ref(var tx:git_transaction; refname:pcchar):cint;cdecl;external External_library name 'git_transaction_lock_ref';
function git_transaction_set_target(var tx:git_transaction; refname:pcchar; var target:git_oid; var sig:git_signature; msg:pcchar):cint;cdecl;external External_library name 'git_transaction_set_target';
function git_transaction_set_symbolic_target(var tx:git_transaction; refname:pcchar; target:pcchar; var sig:git_signature; msg:pcchar):cint;cdecl;external External_library name 'git_transaction_set_symbolic_target';
function git_transaction_set_reflog(var tx:git_transaction; refname:pcchar; var reflog:git_reflog):cint;cdecl;external External_library name 'git_transaction_set_reflog';
function git_transaction_remove(var tx:git_transaction; refname:pcchar):cint;cdecl;external External_library name 'git_transaction_remove';
function git_transaction_commit(var tx:git_transaction):cint;cdecl;external External_library name 'git_transaction_commit';
procedure git_transaction_free(var tx:git_transaction);cdecl;external External_library name 'git_transaction_free';
function git_worktree_list(var out:git_strarray; var repo:git_repository):cint;cdecl;external External_library name 'git_worktree_list';
function git_worktree_lookup(var out:Pgit_worktree; var repo:git_repository; name:pcchar):cint;cdecl;external External_library name 'git_worktree_lookup';
function git_worktree_open_from_repository(var out:Pgit_worktree; var repo:git_repository):cint;cdecl;external External_library name 'git_worktree_open_from_repository';
procedure git_worktree_free(var wt:git_worktree);cdecl;external External_library name 'git_worktree_free';
function git_worktree_validate(var wt:git_worktree):cint;cdecl;external External_library name 'git_worktree_validate';
type
  git_worktree_add_options = record
      version : cuint;
      lock : cint;
      ref : Pgit_reference;
    end;

function git_worktree_add_options_init(var opts:git_worktree_add_options; version:cuint):cint;cdecl;external External_library name 'git_worktree_add_options_init';
function git_worktree_add(var out:Pgit_worktree; var repo:git_repository; name:pcchar; path:pcchar; var opts:git_worktree_add_options):cint;cdecl;external External_library name 'git_worktree_add';
function git_worktree_lock(var wt:git_worktree; reason:pcchar):cint;cdecl;external External_library name 'git_worktree_lock';
function git_worktree_unlock(var wt:git_worktree):cint;cdecl;external External_library name 'git_worktree_unlock';
function git_worktree_is_locked(var reason:git_buf; var wt:git_worktree):cint;cdecl;external External_library name 'git_worktree_is_locked';
function git_worktree_name(var wt:git_worktree):pcchar;cdecl;external External_library name 'git_worktree_name';
function git_worktree_path(var wt:git_worktree):pcchar;cdecl;external External_library name 'git_worktree_path';
type
  git_worktree_prune_t =  Longint;
  Const
    GIT_WORKTREE_PRUNE_VALID = 1 shl 0;
    GIT_WORKTREE_PRUNE_LOCKED = 1 shl 1;
    GIT_WORKTREE_PRUNE_WORKING_TREE = 1 shl 2;

type
  git_worktree_prune_options = record
      version : cuint;
      flags : uint32_t;
    end;

function git_worktree_prune_options_init(var opts:git_worktree_prune_options; version:cuint):cint;cdecl;external External_library name 'git_worktree_prune_options_init';
function git_worktree_is_prunable(var wt:git_worktree; var opts:git_worktree_prune_options):cint;cdecl;external External_library name 'git_worktree_is_prunable';
function git_worktree_prune(var wt:git_worktree; var opts:git_worktree_prune_options):cint;cdecl;external External_library name 'git_worktree_prune';
function git_libgit2_version(var major:cint; var minor:cint; var rev:cint):cint;cdecl;external External_library name 'git_libgit2_version';
type
  git_feature_t =  Longint;
  Const
    GIT_FEATURE_THREADS = 1 shl 0;
    GIT_FEATURE_HTTPS = 1 shl 1;
    GIT_FEATURE_SSH = 1 shl 2;
    GIT_FEATURE_NSEC = 1 shl 3;


function git_libgit2_features:cint;cdecl;external External_library name 'git_libgit2_features';
type
  git_libgit2_opt_t =  Longint;
  Const
    GIT_OPT_GET_MWINDOW_SIZE = 0;
    GIT_OPT_SET_MWINDOW_SIZE = 1;
    GIT_OPT_GET_MWINDOW_MAPPED_LIMIT = 2;
    GIT_OPT_SET_MWINDOW_MAPPED_LIMIT = 3;
    GIT_OPT_GET_SEARCH_PATH = 4;
    GIT_OPT_SET_SEARCH_PATH = 5;
    GIT_OPT_SET_CACHE_OBJECT_LIMIT = 6;
    GIT_OPT_SET_CACHE_MAX_SIZE = 7;
    GIT_OPT_ENABLE_CACHING = 8;
    GIT_OPT_GET_CACHED_MEMORY = 9;
    GIT_OPT_GET_TEMPLATE_PATH = 10;
    GIT_OPT_SET_TEMPLATE_PATH = 11;
    GIT_OPT_SET_SSL_CERT_LOCATIONS = 12;
    GIT_OPT_SET_USER_AGENT = 13;
    GIT_OPT_ENABLE_STRICT_OBJECT_CREATION = 14;
    GIT_OPT_ENABLE_STRICT_SYMBOLIC_REF_CREATION = 15;
    GIT_OPT_SET_SSL_CIPHERS = 16;
    GIT_OPT_GET_USER_AGENT = 17;
    GIT_OPT_ENABLE_OFS_DELTA = 18;
    GIT_OPT_ENABLE_FSYNC_GITDIR = 19;
    GIT_OPT_GET_WINDOWS_SHAREMODE = 20;
    GIT_OPT_SET_WINDOWS_SHAREMODE = 21;
    GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION = 22;
    GIT_OPT_SET_ALLOCATOR = 23;
    GIT_OPT_ENABLE_UNSAVED_INDEX_SAFETY = 24;
    GIT_OPT_GET_PACK_MAX_OBJECTS = 25;
    GIT_OPT_SET_PACK_MAX_OBJECTS = 26;
    GIT_OPT_DISABLE_PACK_KEEP_FILE_CHECKS = 27;
    GIT_OPT_ENABLE_HTTP_EXPECT_CONTINUE = 28;
    GIT_OPT_GET_MWINDOW_FILE_LIMIT = 29;
    GIT_OPT_SET_MWINDOW_FILE_LIMIT = 30;


function git_libgit2_opts(option:cint; args:array of const):cint;cdecl;external External_library name 'git_libgit2_opts';
function git_libgit2_opts(option:cint):cint;cdecl;external External_library name 'git_libgit2_opts';
type
  git_off_t = int64_t;

  git_time_t = int64_t;

  git_object_size_t = uint64_t;

  git_buf = record
      ptr : pcchar;
      asize : size_t;
      size : size_t;
    end;

procedure git_buf_dispose(var buffer:git_buf);cdecl;external External_library name 'git_buf_dispose';
function git_buf_grow(var buffer:git_buf; target_size:size_t):cint;cdecl;external External_library name 'git_buf_grow';
function git_buf_set(var buffer:git_buf; data:pointer; datalen:size_t):cint;cdecl;external External_library name 'git_buf_set';
function git_buf_is_binary(var buf:git_buf):cint;cdecl;external External_library name 'git_buf_is_binary';
function git_buf_contains_nul(var buf:git_buf):cint;cdecl;external External_library name 'git_buf_contains_nul';
type
  git_oid = record
      id : TArray0to19OfCuchar;
    end;

function git_oid_fromstr(var out:git_oid; str:pcchar):cint;cdecl;external External_library name 'git_oid_fromstr';
function git_oid_fromstrp(var out:git_oid; str:pcchar):cint;cdecl;external External_library name 'git_oid_fromstrp';
function git_oid_fromstrn(var out:git_oid; str:pcchar; length:size_t):cint;cdecl;external External_library name 'git_oid_fromstrn';
function git_oid_fromraw(var out:git_oid; raw:pcuchar):cint;cdecl;external External_library name 'git_oid_fromraw';
function git_oid_fmt(out:pcchar; var id:git_oid):cint;cdecl;external External_library name 'git_oid_fmt';
function git_oid_nfmt(out:pcchar; n:size_t; var id:git_oid):cint;cdecl;external External_library name 'git_oid_nfmt';
function git_oid_pathfmt(out:pcchar; var id:git_oid):cint;cdecl;external External_library name 'git_oid_pathfmt';
function git_oid_tostr_s(var oid:git_oid):pcchar;cdecl;external External_library name 'git_oid_tostr_s';
function git_oid_tostr(out:pcchar; n:size_t; var id:git_oid):pcchar;cdecl;external External_library name 'git_oid_tostr';
function git_oid_cpy(var out:git_oid; var src:git_oid):cint;cdecl;external External_library name 'git_oid_cpy';
function git_oid_cmp(var a:git_oid; var b:git_oid):cint;cdecl;external External_library name 'git_oid_cmp';
function git_oid_equal(var a:git_oid; var b:git_oid):cint;cdecl;external External_library name 'git_oid_equal';
function git_oid_ncmp(var a:git_oid; var b:git_oid; len:size_t):cint;cdecl;external External_library name 'git_oid_ncmp';
function git_oid_streq(var id:git_oid; str:pcchar):cint;cdecl;external External_library name 'git_oid_streq';
function git_oid_strcmp(var id:git_oid; str:pcchar):cint;cdecl;external External_library name 'git_oid_strcmp';
function git_oid_is_zero(var id:git_oid):cint;cdecl;external External_library name 'git_oid_is_zero';


function git_oid_shorten_new(min_length:size_t):Pgit_oid_shorten;cdecl;external External_library name 'git_oid_shorten_new';
function git_oid_shorten_add(var os:git_oid_shorten; text_id:pcchar):cint;cdecl;external External_library name 'git_oid_shorten_add';
procedure git_oid_shorten_free(var os:git_oid_shorten);cdecl;external External_library name 'git_oid_shorten_free';
type
  git_object_t =  Longint;
  Const
    GIT_OBJECT_ANY = -(2);
    GIT_OBJECT_INVALID = -(1);
    GIT_OBJECT_COMMIT = 1;
    GIT_OBJECT_TREE = 2;
    GIT_OBJECT_BLOB = 3;
    GIT_OBJECT_TAG = 4;
    GIT_OBJECT_OFS_DELTA = 6;
    GIT_OBJECT_REF_DELTA = 7;

type

  git_time = record
      time : git_time_t;
      offset : cint;
      sign : cchar;
    end;

  git_signature = record
      name : pcchar;
      email : pcchar;
      when : git_time;
    end;

  git_reference_t =  Longint;
  Const
    GIT_REFERENCE_INVALID = 0;
    GIT_REFERENCE_DIRECT = 1;
    GIT_REFERENCE_SYMBOLIC = 2;
    GIT_REFERENCE_ALL = GIT_REFERENCE_DIRECT or GIT_REFERENCE_SYMBOLIC;

type
  git_branch_t =  Longint;
  Const
    GIT_BRANCH_LOCAL = 1;
    GIT_BRANCH_REMOTE = 2;
    GIT_BRANCH_ALL = GIT_BRANCH_LOCAL or GIT_BRANCH_REMOTE;

type
  git_filemode_t =  Longint;
  Const
    GIT_FILEMODE_UNREADABLE = 0000000;
    GIT_FILEMODE_TREE = 0040000;
    GIT_FILEMODE_BLOB = 0100644;
    GIT_FILEMODE_BLOB_EXECUTABLE = 0100755;
    GIT_FILEMODE_LINK = 0120000;
    GIT_FILEMODE_COMMIT = 0160000;

type

  git_submodule_update_t =  Longint;
  Const
    GIT_SUBMODULE_UPDATE_CHECKOUT = 1;
    GIT_SUBMODULE_UPDATE_REBASE = 2;
    GIT_SUBMODULE_UPDATE_MERGE = 3;
    GIT_SUBMODULE_UPDATE_NONE = 4;
    GIT_SUBMODULE_UPDATE_DEFAULT = 0;

type
  git_submodule_ignore_t =  Longint;
  Const
    GIT_SUBMODULE_IGNORE_UNSPECIFIED = -(1);
    GIT_SUBMODULE_IGNORE_NONE = 1;
    GIT_SUBMODULE_IGNORE_UNTRACKED = 2;
    GIT_SUBMODULE_IGNORE_DIRTY = 3;
    GIT_SUBMODULE_IGNORE_ALL = 4;

type
  git_submodule_recurse_t =  Longint;
  Const
    GIT_SUBMODULE_RECURSE_NO = 0;
    GIT_SUBMODULE_RECURSE_YES = 1;
    GIT_SUBMODULE_RECURSE_ONDEMAND = 2;

type
  git_writestream = record
      write : TFunctionVarStreamGit_writestreamBufferPccharLenSize_tCint;cdecl;
      close : TFunctionVarStreamGit_writestreamCint;cdecl;
      free : TProcedureVarStreamGit_writestream;cdecl;
    end;


function git_repository_open(var out:Pgit_repository; path:pcchar):cint;cdecl;external External_library name 'git_repository_open';
function git_repository_open_from_worktree(var out:Pgit_repository; var wt:git_worktree):cint;cdecl;external External_library name 'git_repository_open_from_worktree';
function git_repository_wrap_odb(var out:Pgit_repository; var odb:git_odb):cint;cdecl;external External_library name 'git_repository_wrap_odb';
function git_repository_discover(var out:git_buf; start_path:pcchar; across_fs:cint; ceiling_dirs:pcchar):cint;cdecl;external External_library name 'git_repository_discover';
type
  git_repository_open_flag_t =  Longint;
  Const
    GIT_REPOSITORY_OPEN_NO_SEARCH = 1 shl 0;
    GIT_REPOSITORY_OPEN_CROSS_FS = 1 shl 1;
    GIT_REPOSITORY_OPEN_BARE = 1 shl 2;
    GIT_REPOSITORY_OPEN_NO_DOTGIT = 1 shl 3;
    GIT_REPOSITORY_OPEN_FROM_ENV = 1 shl 4;


function git_repository_open_ext(var out:Pgit_repository; path:pcchar; flags:cuint; ceiling_dirs:pcchar):cint;cdecl;external External_library name 'git_repository_open_ext';
function git_repository_open_bare(var out:Pgit_repository; bare_path:pcchar):cint;cdecl;external External_library name 'git_repository_open_bare';
procedure git_repository_free(var repo:git_repository);cdecl;external External_library name 'git_repository_free';
function git_repository_init(var out:Pgit_repository; path:pcchar; is_bare:cunsigned):cint;cdecl;external External_library name 'git_repository_init';
type
  git_repository_init_flag_t =  Longint;
  Const
    GIT_REPOSITORY_INIT_BARE = 1 shl 0;
    GIT_REPOSITORY_INIT_NO_REINIT = 1 shl 1;
    GIT_REPOSITORY_INIT_NO_DOTGIT_DIR = 1 shl 2;
    GIT_REPOSITORY_INIT_MKDIR = 1 shl 3;
    GIT_REPOSITORY_INIT_MKPATH = 1 shl 4;
    GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE = 1 shl 5;
    GIT_REPOSITORY_INIT_RELATIVE_GITLINK = 1 shl 6;

type
  git_repository_init_mode_t =  Longint;
  Const
    GIT_REPOSITORY_INIT_SHARED_UMASK = 0;
    GIT_REPOSITORY_INIT_SHARED_GROUP = 0002775;
    GIT_REPOSITORY_INIT_SHARED_ALL = 0002777;

type
  git_repository_init_options = record
      version : cuint;
      flags : uint32_t;
      mode : uint32_t;
      workdir_path : pcchar;
      description : pcchar;
      template_path : pcchar;
      initial_head : pcchar;
      origin_url : pcchar;
    end;

function git_repository_init_options_init(var opts:git_repository_init_options; version:cuint):cint;cdecl;external External_library name 'git_repository_init_options_init';
function git_repository_init_ext(var out:Pgit_repository; repo_path:pcchar; var opts:git_repository_init_options):cint;cdecl;external External_library name 'git_repository_init_ext';
function git_repository_head(var out:Pgit_reference; var repo:git_repository):cint;cdecl;external External_library name 'git_repository_head';
function git_repository_head_for_worktree(var out:Pgit_reference; var repo:git_repository; name:pcchar):cint;cdecl;external External_library name 'git_repository_head_for_worktree';
function git_repository_head_detached(var repo:git_repository):cint;cdecl;external External_library name 'git_repository_head_detached';
function git_repository_head_detached_for_worktree(var repo:git_repository; name:pcchar):cint;cdecl;external External_library name 'git_repository_head_detached_for_worktree';
function git_repository_head_unborn(var repo:git_repository):cint;cdecl;external External_library name 'git_repository_head_unborn';
function git_repository_is_empty(var repo:git_repository):cint;cdecl;external External_library name 'git_repository_is_empty';
type
  git_repository_item_t =  Longint;
  Const
    GIT_REPOSITORY_ITEM_GITDIR = 0;
    GIT_REPOSITORY_ITEM_WORKDIR = 1;
    GIT_REPOSITORY_ITEM_COMMONDIR = 2;
    GIT_REPOSITORY_ITEM_INDEX = 3;
    GIT_REPOSITORY_ITEM_OBJECTS = 4;
    GIT_REPOSITORY_ITEM_REFS = 5;
    GIT_REPOSITORY_ITEM_PACKED_REFS = 6;
    GIT_REPOSITORY_ITEM_REMOTES = 7;
    GIT_REPOSITORY_ITEM_CONFIG = 8;
    GIT_REPOSITORY_ITEM_INFO = 9;
    GIT_REPOSITORY_ITEM_HOOKS = 10;
    GIT_REPOSITORY_ITEM_LOGS = 11;
    GIT_REPOSITORY_ITEM_MODULES = 12;
    GIT_REPOSITORY_ITEM_WORKTREES = 13;
    GIT_REPOSITORY_ITEM__LAST = 14;


function git_repository_item_path(var out:git_buf; var repo:git_repository; item:git_repository_item_t):cint;cdecl;external External_library name 'git_repository_item_path';
function git_repository_path(var repo:git_repository):pcchar;cdecl;external External_library name 'git_repository_path';
function git_repository_workdir(var repo:git_repository):pcchar;cdecl;external External_library name 'git_repository_workdir';
function git_repository_commondir(var repo:git_repository):pcchar;cdecl;external External_library name 'git_repository_commondir';
function git_repository_set_workdir(var repo:git_repository; workdir:pcchar; update_gitlink:cint):cint;cdecl;external External_library name 'git_repository_set_workdir';
function git_repository_is_bare(var repo:git_repository):cint;cdecl;external External_library name 'git_repository_is_bare';
function git_repository_is_worktree(var repo:git_repository):cint;cdecl;external External_library name 'git_repository_is_worktree';
function git_repository_config(var out:Pgit_config; var repo:git_repository):cint;cdecl;external External_library name 'git_repository_config';
function git_repository_config_snapshot(var out:Pgit_config; var repo:git_repository):cint;cdecl;external External_library name 'git_repository_config_snapshot';
function git_repository_odb(var out:Pgit_odb; var repo:git_repository):cint;cdecl;external External_library name 'git_repository_odb';
function git_repository_refdb(var out:Pgit_refdb; var repo:git_repository):cint;cdecl;external External_library name 'git_repository_refdb';
function git_repository_index(var out:Pgit_index; var repo:git_repository):cint;cdecl;external External_library name 'git_repository_index';
function git_repository_message(var out:git_buf; var repo:git_repository):cint;cdecl;external External_library name 'git_repository_message';
function git_repository_message_remove(var repo:git_repository):cint;cdecl;external External_library name 'git_repository_message_remove';
function git_repository_state_cleanup(var repo:git_repository):cint;cdecl;external External_library name 'git_repository_state_cleanup';
type

  git_repository_fetchhead_foreach_cb = function (ref_name:pcchar; remote_url:pcchar; var oid:git_oid; is_merge:cuint; payload:pointer):cint;cdecl;

function git_repository_fetchhead_foreach(var repo:git_repository; callback:git_repository_fetchhead_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_repository_fetchhead_foreach';
type

  git_repository_mergehead_foreach_cb = function (var oid:git_oid; payload:pointer):cint;cdecl;

function git_repository_mergehead_foreach(var repo:git_repository; callback:git_repository_mergehead_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_repository_mergehead_foreach';
function git_repository_hashfile(var out:git_oid; var repo:git_repository; path:pcchar; _type:git_object_t; as_path:pcchar):cint;cdecl;external External_library name 'git_repository_hashfile';
function git_repository_set_head(var repo:git_repository; refname:pcchar):cint;cdecl;external External_library name 'git_repository_set_head';
function git_repository_set_head_detached(var repo:git_repository; var commitish:git_oid):cint;cdecl;external External_library name 'git_repository_set_head_detached';
function git_repository_set_head_detached_from_annotated(var repo:git_repository; var commitish:git_annotated_commit):cint;cdecl;external External_library name 'git_repository_set_head_detached_from_annotated';
function git_repository_detach_head(var repo:git_repository):cint;cdecl;external External_library name 'git_repository_detach_head';
type
  git_repository_state_t =  Longint;
  Const
    GIT_REPOSITORY_STATE_NONE = 0;
    GIT_REPOSITORY_STATE_MERGE = 1;
    GIT_REPOSITORY_STATE_REVERT = 2;
    GIT_REPOSITORY_STATE_REVERT_SEQUENCE = 3;
    GIT_REPOSITORY_STATE_CHERRYPICK = 4;
    GIT_REPOSITORY_STATE_CHERRYPICK_SEQUENCE = 5;
    GIT_REPOSITORY_STATE_BISECT = 6;
    GIT_REPOSITORY_STATE_REBASE = 7;
    GIT_REPOSITORY_STATE_REBASE_INTERACTIVE = 8;
    GIT_REPOSITORY_STATE_REBASE_MERGE = 9;
    GIT_REPOSITORY_STATE_APPLY_MAILBOX = 10;
    GIT_REPOSITORY_STATE_APPLY_MAILBOX_OR_REBASE = 11;


function git_repository_state(var repo:git_repository):cint;cdecl;external External_library name 'git_repository_state';
function git_repository_set_namespace(var repo:git_repository; nmspace:pcchar):cint;cdecl;external External_library name 'git_repository_set_namespace';
function git_repository_get_namespace(var repo:git_repository):pcchar;cdecl;external External_library name 'git_repository_get_namespace';
function git_repository_is_shallow(var repo:git_repository):cint;cdecl;external External_library name 'git_repository_is_shallow';
function git_repository_ident(name:Ppcchar; email:Ppcchar; var repo:git_repository):cint;cdecl;external External_library name 'git_repository_ident';
function git_repository_set_ident(var repo:git_repository; name:pcchar; email:pcchar):cint;cdecl;external External_library name 'git_repository_set_ident';
function git_annotated_commit_from_ref(var out:Pgit_annotated_commit; var repo:git_repository; var ref:git_reference):cint;cdecl;external External_library name 'git_annotated_commit_from_ref';
function git_annotated_commit_from_fetchhead(var out:Pgit_annotated_commit; var repo:git_repository; branch_name:pcchar; remote_url:pcchar; var id:git_oid):cint;cdecl;external External_library name 'git_annotated_commit_from_fetchhead';
function git_annotated_commit_lookup(var out:Pgit_annotated_commit; var repo:git_repository; var id:git_oid):cint;cdecl;external External_library name 'git_annotated_commit_lookup';
function git_annotated_commit_from_revspec(var out:Pgit_annotated_commit; var repo:git_repository; revspec:pcchar):cint;cdecl;external External_library name 'git_annotated_commit_from_revspec';
function git_annotated_commit_id(var commit:git_annotated_commit):Pgit_oid;cdecl;external External_library name 'git_annotated_commit_id';
function git_annotated_commit_ref(var commit:git_annotated_commit):pcchar;cdecl;external External_library name 'git_annotated_commit_ref';
procedure git_annotated_commit_free(var commit:git_annotated_commit);cdecl;external External_library name 'git_annotated_commit_free';
function git_object_lookup(var object:Pgit_object; var repo:git_repository; var id:git_oid; _type:git_object_t):cint;cdecl;external External_library name 'git_object_lookup';
function git_object_lookup_prefix(var object_out:Pgit_object; var repo:git_repository; var id:git_oid; len:size_t; _type:git_object_t):cint;cdecl;external External_library name 'git_object_lookup_prefix';
function git_object_lookup_bypath(var out:Pgit_object; var treeish:git_object; path:pcchar; _type:git_object_t):cint;cdecl;external External_library name 'git_object_lookup_bypath';
function git_object_id(var obj:git_object):Pgit_oid;cdecl;external External_library name 'git_object_id';
function git_object_short_id(var out:git_buf; var obj:git_object):cint;cdecl;external External_library name 'git_object_short_id';
function git_object_type(var obj:git_object):git_object_t;cdecl;external External_library name 'git_object_type';
function git_object_owner(var obj:git_object):Pgit_repository;cdecl;external External_library name 'git_object_owner';
procedure git_object_free(var object:git_object);cdecl;external External_library name 'git_object_free';
function git_object_type2string(_type:git_object_t):pcchar;cdecl;external External_library name 'git_object_type2string';
function git_object_string2type(str:pcchar):git_object_t;cdecl;external External_library name 'git_object_string2type';
function git_object_typeisloose(_type:git_object_t):cint;cdecl;external External_library name 'git_object_typeisloose';
function git_object_peel(var peeled:Pgit_object; var object:git_object; target_type:git_object_t):cint;cdecl;external External_library name 'git_object_peel';
function git_object_dup(var dest:Pgit_object; var source:git_object):cint;cdecl;external External_library name 'git_object_dup';
function git_tree_lookup(var out:Pgit_tree; var repo:git_repository; var id:git_oid):cint;cdecl;external External_library name 'git_tree_lookup';
function git_tree_lookup_prefix(var out:Pgit_tree; var repo:git_repository; var id:git_oid; len:size_t):cint;cdecl;external External_library name 'git_tree_lookup_prefix';
procedure git_tree_free(var tree:git_tree);cdecl;external External_library name 'git_tree_free';
function git_tree_id(var tree:git_tree):Pgit_oid;cdecl;external External_library name 'git_tree_id';
function git_tree_owner(var tree:git_tree):Pgit_repository;cdecl;external External_library name 'git_tree_owner';
function git_tree_entrycount(var tree:git_tree):size_t;cdecl;external External_library name 'git_tree_entrycount';
function git_tree_entry_byname(var tree:git_tree; filename:pcchar):Pgit_tree_entry;cdecl;external External_library name 'git_tree_entry_byname';
function git_tree_entry_byindex(var tree:git_tree; idx:size_t):Pgit_tree_entry;cdecl;external External_library name 'git_tree_entry_byindex';
function git_tree_entry_byid(var tree:git_tree; var id:git_oid):Pgit_tree_entry;cdecl;external External_library name 'git_tree_entry_byid';
function git_tree_entry_bypath(var out:Pgit_tree_entry; var root:git_tree; path:pcchar):cint;cdecl;external External_library name 'git_tree_entry_bypath';
function git_tree_entry_dup(var dest:Pgit_tree_entry; var source:git_tree_entry):cint;cdecl;external External_library name 'git_tree_entry_dup';
procedure git_tree_entry_free(var entry:git_tree_entry);cdecl;external External_library name 'git_tree_entry_free';
function git_tree_entry_name(var entry:git_tree_entry):pcchar;cdecl;external External_library name 'git_tree_entry_name';
function git_tree_entry_id(var entry:git_tree_entry):Pgit_oid;cdecl;external External_library name 'git_tree_entry_id';
function git_tree_entry_type(var entry:git_tree_entry):git_object_t;cdecl;external External_library name 'git_tree_entry_type';
function git_tree_entry_filemode(var entry:git_tree_entry):git_filemode_t;cdecl;external External_library name 'git_tree_entry_filemode';
function git_tree_entry_filemode_raw(var entry:git_tree_entry):git_filemode_t;cdecl;external External_library name 'git_tree_entry_filemode_raw';
function git_tree_entry_cmp(var e1:git_tree_entry; var e2:git_tree_entry):cint;cdecl;external External_library name 'git_tree_entry_cmp';
function git_tree_entry_to_object(var object_out:Pgit_object; var repo:git_repository; var entry:git_tree_entry):cint;cdecl;external External_library name 'git_tree_entry_to_object';
function git_treebuilder_new(var out:Pgit_treebuilder; var repo:git_repository; var source:git_tree):cint;cdecl;external External_library name 'git_treebuilder_new';
function git_treebuilder_clear(var bld:git_treebuilder):cint;cdecl;external External_library name 'git_treebuilder_clear';
function git_treebuilder_entrycount(var bld:git_treebuilder):size_t;cdecl;external External_library name 'git_treebuilder_entrycount';
procedure git_treebuilder_free(var bld:git_treebuilder);cdecl;external External_library name 'git_treebuilder_free';
function git_treebuilder_get(var bld:git_treebuilder; filename:pcchar):Pgit_tree_entry;cdecl;external External_library name 'git_treebuilder_get';
function git_treebuilder_insert(var out:Pgit_tree_entry; var bld:git_treebuilder; filename:pcchar; var id:git_oid; filemode:git_filemode_t):cint;cdecl;external External_library name 'git_treebuilder_insert';
function git_treebuilder_remove(var bld:git_treebuilder; filename:pcchar):cint;cdecl;external External_library name 'git_treebuilder_remove';
type

  git_treebuilder_filter_cb = function (var entry:git_tree_entry; payload:pointer):cint;cdecl;

function git_treebuilder_filter(var bld:git_treebuilder; filter:git_treebuilder_filter_cb; payload:pointer):cint;cdecl;external External_library name 'git_treebuilder_filter';
function git_treebuilder_write(var id:git_oid; var bld:git_treebuilder):cint;cdecl;external External_library name 'git_treebuilder_write';
function git_treebuilder_write_with_buffer(var oid:git_oid; var bld:git_treebuilder; var tree:git_buf):cint;cdecl;external External_library name 'git_treebuilder_write_with_buffer';
type

  git_treewalk_cb = function (root:pcchar; var entry:git_tree_entry; payload:pointer):cint;cdecl;

  git_treewalk_mode =  Longint;
  Const
    GIT_TREEWALK_PRE = 0;
    GIT_TREEWALK_POST = 1;


function git_tree_walk(var tree:git_tree; mode:git_treewalk_mode; callback:git_treewalk_cb; payload:pointer):cint;cdecl;external External_library name 'git_tree_walk';
function git_tree_dup(var out:Pgit_tree; var source:git_tree):cint;cdecl;external External_library name 'git_tree_dup';
type
  git_tree_update_t =  Longint;
  Const
    GIT_TREE_UPDATE_UPSERT = 0;
    GIT_TREE_UPDATE_REMOVE = 1;

type
  git_tree_update = record
      action : git_tree_update_t;
      id : git_oid;
      filemode : git_filemode_t;
      path : pcchar;
    end;

function git_tree_create_updated(var out:git_oid; var repo:git_repository; var baseline:git_tree; nupdates:size_t; var updates:git_tree_update):cint;cdecl;external External_library name 'git_tree_create_updated';
type
  git_strarray = record
      strings : ^pcchar;
      count : size_t;
    end;

procedure git_strarray_dispose(var array:git_strarray);cdecl;external External_library name 'git_strarray_dispose';
function git_strarray_copy(var tgt:git_strarray; var src:git_strarray):cint;cdecl;external External_library name 'git_strarray_copy';
function git_reference_lookup(var out:Pgit_reference; var repo:git_repository; name:pcchar):cint;cdecl;external External_library name 'git_reference_lookup';
function git_reference_name_to_id(var out:git_oid; var repo:git_repository; name:pcchar):cint;cdecl;external External_library name 'git_reference_name_to_id';
function git_reference_dwim(var out:Pgit_reference; var repo:git_repository; shorthand:pcchar):cint;cdecl;external External_library name 'git_reference_dwim';
function git_reference_symbolic_create_matching(var out:Pgit_reference; var repo:git_repository; name:pcchar; target:pcchar; force:cint; 
           current_value:pcchar; log_message:pcchar):cint;cdecl;external External_library name 'git_reference_symbolic_create_matching';
function git_reference_symbolic_create(var out:Pgit_reference; var repo:git_repository; name:pcchar; target:pcchar; force:cint; 
           log_message:pcchar):cint;cdecl;external External_library name 'git_reference_symbolic_create';
function git_reference_create(var out:Pgit_reference; var repo:git_repository; name:pcchar; var id:git_oid; force:cint; 
           log_message:pcchar):cint;cdecl;external External_library name 'git_reference_create';
function git_reference_create_matching(var out:Pgit_reference; var repo:git_repository; name:pcchar; var id:git_oid; force:cint; 
           var current_id:git_oid; log_message:pcchar):cint;cdecl;external External_library name 'git_reference_create_matching';
function git_reference_target(var ref:git_reference):Pgit_oid;cdecl;external External_library name 'git_reference_target';
function git_reference_target_peel(var ref:git_reference):Pgit_oid;cdecl;external External_library name 'git_reference_target_peel';
function git_reference_symbolic_target(var ref:git_reference):pcchar;cdecl;external External_library name 'git_reference_symbolic_target';
function git_reference_type(var ref:git_reference):git_reference_t;cdecl;external External_library name 'git_reference_type';
function git_reference_name(var ref:git_reference):pcchar;cdecl;external External_library name 'git_reference_name';
function git_reference_resolve(var out:Pgit_reference; var ref:git_reference):cint;cdecl;external External_library name 'git_reference_resolve';
function git_reference_owner(var ref:git_reference):Pgit_repository;cdecl;external External_library name 'git_reference_owner';
function git_reference_symbolic_set_target(var out:Pgit_reference; var ref:git_reference; target:pcchar; log_message:pcchar):cint;cdecl;external External_library name 'git_reference_symbolic_set_target';
function git_reference_set_target(var out:Pgit_reference; var ref:git_reference; var id:git_oid; log_message:pcchar):cint;cdecl;external External_library name 'git_reference_set_target';
function git_reference_rename(var new_ref:Pgit_reference; var ref:git_reference; new_name:pcchar; force:cint; log_message:pcchar):cint;cdecl;external External_library name 'git_reference_rename';
function git_reference_delete(var ref:git_reference):cint;cdecl;external External_library name 'git_reference_delete';
function git_reference_remove(var repo:git_repository; name:pcchar):cint;cdecl;external External_library name 'git_reference_remove';
function git_reference_list(var array:git_strarray; var repo:git_repository):cint;cdecl;external External_library name 'git_reference_list';
type

  git_reference_foreach_cb = function (var reference:git_reference; payload:pointer):cint;cdecl;

  git_reference_foreach_name_cb = function (name:pcchar; payload:pointer):cint;cdecl;

function git_reference_foreach(var repo:git_repository; callback:git_reference_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_reference_foreach';
function git_reference_foreach_name(var repo:git_repository; callback:git_reference_foreach_name_cb; payload:pointer):cint;cdecl;external External_library name 'git_reference_foreach_name';
function git_reference_dup(var dest:Pgit_reference; var source:git_reference):cint;cdecl;external External_library name 'git_reference_dup';
procedure git_reference_free(var ref:git_reference);cdecl;external External_library name 'git_reference_free';
function git_reference_cmp(var ref1:git_reference; var ref2:git_reference):cint;cdecl;external External_library name 'git_reference_cmp';
function git_reference_iterator_new(var out:Pgit_reference_iterator; var repo:git_repository):cint;cdecl;external External_library name 'git_reference_iterator_new';
function git_reference_iterator_glob_new(var out:Pgit_reference_iterator; var repo:git_repository; glob:pcchar):cint;cdecl;external External_library name 'git_reference_iterator_glob_new';
function git_reference_next(var out:Pgit_reference; var iter:git_reference_iterator):cint;cdecl;external External_library name 'git_reference_next';
function git_reference_next_name(out:Ppcchar; var iter:git_reference_iterator):cint;cdecl;external External_library name 'git_reference_next_name';
procedure git_reference_iterator_free(var iter:git_reference_iterator);cdecl;external External_library name 'git_reference_iterator_free';
function git_reference_foreach_glob(var repo:git_repository; glob:pcchar; callback:git_reference_foreach_name_cb; payload:pointer):cint;cdecl;external External_library name 'git_reference_foreach_glob';
function git_reference_has_log(var repo:git_repository; refname:pcchar):cint;cdecl;external External_library name 'git_reference_has_log';
function git_reference_ensure_log(var repo:git_repository; refname:pcchar):cint;cdecl;external External_library name 'git_reference_ensure_log';
function git_reference_is_branch(var ref:git_reference):cint;cdecl;external External_library name 'git_reference_is_branch';
function git_reference_is_remote(var ref:git_reference):cint;cdecl;external External_library name 'git_reference_is_remote';
function git_reference_is_tag(var ref:git_reference):cint;cdecl;external External_library name 'git_reference_is_tag';
function git_reference_is_note(var ref:git_reference):cint;cdecl;external External_library name 'git_reference_is_note';
type
  git_reference_format_t =  Longint;
  Const
    GIT_REFERENCE_FORMAT_NORMAL = 0;
    GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL = 1 shl 0;
    GIT_REFERENCE_FORMAT_REFSPEC_PATTERN = 1 shl 1;
    GIT_REFERENCE_FORMAT_REFSPEC_SHORTHAND = 1 shl 2;


function git_reference_normalize_name(buffer_out:pcchar; buffer_size:size_t; name:pcchar; flags:cuint):cint;cdecl;external External_library name 'git_reference_normalize_name';
function git_reference_peel(var out:Pgit_object; var ref:git_reference; _type:git_object_t):cint;cdecl;external External_library name 'git_reference_peel';
function git_reference_is_valid_name(refname:pcchar):cint;cdecl;external External_library name 'git_reference_is_valid_name';
function git_reference_shorthand(var ref:git_reference):pcchar;cdecl;external External_library name 'git_reference_shorthand';
type
  git_diff_option_t =  Longint;
  Const
    GIT_DIFF_NORMAL = 0;
    GIT_DIFF_REVERSE = 1 shl 0;
    GIT_DIFF_INCLUDE_IGNORED = 1 shl 1;
    GIT_DIFF_RECURSE_IGNORED_DIRS = 1 shl 2;
    GIT_DIFF_INCLUDE_UNTRACKED = 1 shl 3;
    GIT_DIFF_RECURSE_UNTRACKED_DIRS = 1 shl 4;
    GIT_DIFF_INCLUDE_UNMODIFIED = 1 shl 5;
    GIT_DIFF_INCLUDE_TYPECHANGE = 1 shl 6;
    GIT_DIFF_INCLUDE_TYPECHANGE_TREES = 1 shl 7;
    GIT_DIFF_IGNORE_FILEMODE = 1 shl 8;
    GIT_DIFF_IGNORE_SUBMODULES = 1 shl 9;
    GIT_DIFF_IGNORE_CASE = 1 shl 10;
    GIT_DIFF_INCLUDE_CASECHANGE = 1 shl 11;
    GIT_DIFF_DISABLE_PATHSPEC_MATCH = 1 shl 12;
    GIT_DIFF_SKIP_BINARY_CHECK = 1 shl 13;
    GIT_DIFF_ENABLE_FAST_UNTRACKED_DIRS = 1 shl 14;
    GIT_DIFF_UPDATE_INDEX = 1 shl 15;
    GIT_DIFF_INCLUDE_UNREADABLE = 1 shl 16;
    GIT_DIFF_INCLUDE_UNREADABLE_AS_UNTRACKED = 1 shl 17;
    GIT_DIFF_INDENT_HEURISTIC = 1 shl 18;
    GIT_DIFF_FORCE_TEXT = 1 shl 20;
    GIT_DIFF_FORCE_BINARY = 1 shl 21;
    GIT_DIFF_IGNORE_WHITESPACE = 1 shl 22;
    GIT_DIFF_IGNORE_WHITESPACE_CHANGE = 1 shl 23;
    GIT_DIFF_IGNORE_WHITESPACE_EOL = 1 shl 24;
    GIT_DIFF_SHOW_UNTRACKED_CONTENT = 1 shl 25;
    GIT_DIFF_SHOW_UNMODIFIED = 1 shl 26;
    GIT_DIFF_PATIENCE = 1 shl 28;
    GIT_DIFF_MINIMAL = 1 shl 29;
    GIT_DIFF_SHOW_BINARY = 1 shl 30;

type

  git_diff_flag_t =  Longint;
  Const
    GIT_DIFF_FLAG_BINARY = 1 shl 0;
    GIT_DIFF_FLAG_NOT_BINARY = 1 shl 1;
    GIT_DIFF_FLAG_VALID_ID = 1 shl 2;
    GIT_DIFF_FLAG_EXISTS = 1 shl 3;

type
  git_delta_t =  Longint;
  Const
    GIT_DELTA_UNMODIFIED = 0;
    GIT_DELTA_ADDED = 1;
    GIT_DELTA_DELETED = 2;
    GIT_DELTA_MODIFIED = 3;
    GIT_DELTA_RENAMED = 4;
    GIT_DELTA_COPIED = 5;
    GIT_DELTA_IGNORED = 6;
    GIT_DELTA_UNTRACKED = 7;
    GIT_DELTA_TYPECHANGE = 8;
    GIT_DELTA_UNREADABLE = 9;
    GIT_DELTA_CONFLICTED = 10;

type
  git_diff_file = record
      id : git_oid;
      path : pcchar;
      size : git_object_size_t;
      flags : uint32_t;
      mode : uint16_t;
      id_abbrev : uint16_t;
    end;

  git_diff_delta = record
      status : git_delta_t;
      flags : uint32_t;
      similarity : uint16_t;
      nfiles : uint16_t;
      old_file : git_diff_file;
      new_file : git_diff_file;
    end;

  git_diff_notify_cb = function (var diff_so_far:git_diff; var delta_to_add:git_diff_delta; matched_pathspec:pcchar; payload:pointer):cint;cdecl;

  git_diff_progress_cb = function (var diff_so_far:git_diff; old_path:pcchar; new_path:pcchar; payload:pointer):cint;cdecl;

  git_diff_options = record
      version : cuint;
      flags : uint32_t;
      ignore_submodules : git_submodule_ignore_t;
      pathspec : git_strarray;
      notify_cb : git_diff_notify_cb;
      progress_cb : git_diff_progress_cb;
      payload : pointer;
      context_lines : uint32_t;
      interhunk_lines : uint32_t;
      id_abbrev : uint16_t;
      max_size : git_off_t;
      old_prefix : pcchar;
      new_prefix : pcchar;
    end;

function git_diff_options_init(var opts:git_diff_options; version:cuint):cint;cdecl;external External_library name 'git_diff_options_init';
type

  git_diff_file_cb = function (var delta:git_diff_delta; progress:cfloat; payload:pointer):cint;cdecl;

  git_diff_binary_t =  Longint;
  Const
    GIT_DIFF_BINARY_NONE = 0;
    GIT_DIFF_BINARY_LITERAL = 1;
    GIT_DIFF_BINARY_DELTA = 2;

type
  git_diff_binary_file = record
      _type : git_diff_binary_t;
      data : pcchar;
      datalen : size_t;
      inflatedlen : size_t;
    end;

  git_diff_binary = record
      contains_data : cuint;
      old_file : git_diff_binary_file;
      new_file : git_diff_binary_file;
    end;

  git_diff_binary_cb = function (var delta:git_diff_delta; var binary:git_diff_binary; payload:pointer):cint;cdecl;

  git_diff_hunk = record
      old_start : cint;
      old_lines : cint;
      new_start : cint;
      new_lines : cint;
      header_len : size_t;
      header : TArray0to127OfCchar;
    end;

  git_diff_hunk_cb = function (var delta:git_diff_delta; var hunk:git_diff_hunk; payload:pointer):cint;cdecl;

  git_diff_line_t =  Longint;
  Const
    GIT_DIFF_LINE_CONTEXT = ' ';
    GIT_DIFF_LINE_ADDITION = '+';
    GIT_DIFF_LINE_DELETION = '-';
    GIT_DIFF_LINE_CONTEXT_EOFNL = '=';
    GIT_DIFF_LINE_ADD_EOFNL = '>';
    GIT_DIFF_LINE_DEL_EOFNL = '<';
    GIT_DIFF_LINE_FILE_HDR = 'F';
    GIT_DIFF_LINE_HUNK_HDR = 'H';
    GIT_DIFF_LINE_BINARY = 'B';

type
  git_diff_line = record
      origin : cchar;
      old_lineno : cint;
      new_lineno : cint;
      num_lines : cint;
      content_len : size_t;
      content_offset : git_off_t;
      content : pcchar;
    end;

  git_diff_line_cb = function (var delta:git_diff_delta; var hunk:git_diff_hunk; var line:git_diff_line; payload:pointer):cint;cdecl;

  git_diff_find_t =  Longint;
  Const
    GIT_DIFF_FIND_BY_CONFIG = 0;
    GIT_DIFF_FIND_RENAMES = 1 shl 0;
    GIT_DIFF_FIND_RENAMES_FROM_REWRITES = 1 shl 1;
    GIT_DIFF_FIND_COPIES = 1 shl 2;
    GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED = 1 shl 3;
    GIT_DIFF_FIND_REWRITES = 1 shl 4;
    GIT_DIFF_BREAK_REWRITES = 1 shl 5;
    GIT_DIFF_FIND_AND_BREAK_REWRITES = GIT_DIFF_FIND_REWRITES or GIT_DIFF_BREAK_REWRITES;
    GIT_DIFF_FIND_FOR_UNTRACKED = 1 shl 6;
    GIT_DIFF_FIND_ALL = $0ff;
    GIT_DIFF_FIND_IGNORE_LEADING_WHITESPACE = 0;
    GIT_DIFF_FIND_IGNORE_WHITESPACE = 1 shl 12;
    GIT_DIFF_FIND_DONT_IGNORE_WHITESPACE = 1 shl 13;
    GIT_DIFF_FIND_EXACT_MATCH_ONLY = 1 shl 14;
    GIT_DIFF_BREAK_REWRITES_FOR_RENAMES_ONLY = 1 shl 15;
    GIT_DIFF_FIND_REMOVE_UNMODIFIED = 1 shl 16;

type
  git_diff_similarity_metric = record
      file_signature : TFunctionOutPpointerVarFileGit_diff_fileFullpathPccharPayloadPointerCint;cdecl;
      buffer_signature : TFunctionOutPpointerVarFileGit_diff_fileBufPccharBuflenSize_tPayloadPointerCint;cdecl;
      free_signature : TProcedureSigPointerPayloadPointer;cdecl;
      similarity : TFunctionVarScoreCintSigaPointerSigbPointerPayloadPointerCint;cdecl;
      payload : pointer;
    end;

  git_diff_find_options = record
      version : cuint;
      flags : uint32_t;
      rename_threshold : uint16_t;
      rename_from_rewrite_threshold : uint16_t;
      copy_threshold : uint16_t;
      break_rewrite_threshold : uint16_t;
      rename_limit : size_t;
      metric : Pgit_diff_similarity_metric;
    end;

function git_diff_find_options_init(var opts:git_diff_find_options; version:cuint):cint;cdecl;external External_library name 'git_diff_find_options_init';
procedure git_diff_free(var diff:git_diff);cdecl;external External_library name 'git_diff_free';
function git_diff_tree_to_tree(var diff:Pgit_diff; var repo:git_repository; var old_tree:git_tree; var new_tree:git_tree; var opts:git_diff_options):cint;cdecl;external External_library name 'git_diff_tree_to_tree';
function git_diff_tree_to_index(var diff:Pgit_diff; var repo:git_repository; var old_tree:git_tree; var index:git_index; var opts:git_diff_options):cint;cdecl;external External_library name 'git_diff_tree_to_index';
function git_diff_index_to_workdir(var diff:Pgit_diff; var repo:git_repository; var index:git_index; var opts:git_diff_options):cint;cdecl;external External_library name 'git_diff_index_to_workdir';
function git_diff_tree_to_workdir(var diff:Pgit_diff; var repo:git_repository; var old_tree:git_tree; var opts:git_diff_options):cint;cdecl;external External_library name 'git_diff_tree_to_workdir';
function git_diff_tree_to_workdir_with_index(var diff:Pgit_diff; var repo:git_repository; var old_tree:git_tree; var opts:git_diff_options):cint;cdecl;external External_library name 'git_diff_tree_to_workdir_with_index';
function git_diff_index_to_index(var diff:Pgit_diff; var repo:git_repository; var old_index:git_index; var new_index:git_index; var opts:git_diff_options):cint;cdecl;external External_library name 'git_diff_index_to_index';
function git_diff_merge(var onto:git_diff; var from:git_diff):cint;cdecl;external External_library name 'git_diff_merge';
function git_diff_find_similar(var diff:git_diff; var options:git_diff_find_options):cint;cdecl;external External_library name 'git_diff_find_similar';
function git_diff_num_deltas(var diff:git_diff):size_t;cdecl;external External_library name 'git_diff_num_deltas';
function git_diff_num_deltas_of_type(var diff:git_diff; _type:git_delta_t):size_t;cdecl;external External_library name 'git_diff_num_deltas_of_type';
function git_diff_get_delta(var diff:git_diff; idx:size_t):Pgit_diff_delta;cdecl;external External_library name 'git_diff_get_delta';
function git_diff_is_sorted_icase(var diff:git_diff):cint;cdecl;external External_library name 'git_diff_is_sorted_icase';
function git_diff_foreach(var diff:git_diff; file_cb:git_diff_file_cb; binary_cb:git_diff_binary_cb; hunk_cb:git_diff_hunk_cb; line_cb:git_diff_line_cb; 
           payload:pointer):cint;cdecl;external External_library name 'git_diff_foreach';
function git_diff_status_char(status:git_delta_t):cchar;cdecl;external External_library name 'git_diff_status_char';
type
  git_diff_format_t =  Longint;
  Const
    GIT_DIFF_FORMAT_PATCH = 1;
    GIT_DIFF_FORMAT_PATCH_HEADER = 2;
    GIT_DIFF_FORMAT_RAW = 3;
    GIT_DIFF_FORMAT_NAME_ONLY = 4;
    GIT_DIFF_FORMAT_NAME_STATUS = 5;
    GIT_DIFF_FORMAT_PATCH_ID = 6;


function git_diff_print(var diff:git_diff; format:git_diff_format_t; print_cb:git_diff_line_cb; payload:pointer):cint;cdecl;external External_library name 'git_diff_print';
function git_diff_to_buf(var out:git_buf; var diff:git_diff; format:git_diff_format_t):cint;cdecl;external External_library name 'git_diff_to_buf';
function git_diff_blobs(var old_blob:git_blob; old_as_path:pcchar; var new_blob:git_blob; new_as_path:pcchar; var options:git_diff_options; 
           file_cb:git_diff_file_cb; binary_cb:git_diff_binary_cb; hunk_cb:git_diff_hunk_cb; line_cb:git_diff_line_cb; payload:pointer):cint;cdecl;external External_library name 'git_diff_blobs';
function git_diff_blob_to_buffer(var old_blob:git_blob; old_as_path:pcchar; buffer:pcchar; buffer_len:size_t; buffer_as_path:pcchar; 
           var options:git_diff_options; file_cb:git_diff_file_cb; binary_cb:git_diff_binary_cb; hunk_cb:git_diff_hunk_cb; line_cb:git_diff_line_cb; 
           payload:pointer):cint;cdecl;external External_library name 'git_diff_blob_to_buffer';
function git_diff_buffers(old_buffer:pointer; old_len:size_t; old_as_path:pcchar; new_buffer:pointer; new_len:size_t; 
           new_as_path:pcchar; var options:git_diff_options; file_cb:git_diff_file_cb; binary_cb:git_diff_binary_cb; hunk_cb:git_diff_hunk_cb; 
           line_cb:git_diff_line_cb; payload:pointer):cint;cdecl;external External_library name 'git_diff_buffers';
function git_diff_from_buffer(var out:Pgit_diff; content:pcchar; content_len:size_t):cint;cdecl;external External_library name 'git_diff_from_buffer';
type

  git_diff_stats_format_t =  Longint;
  Const
    GIT_DIFF_STATS_NONE = 0;
    GIT_DIFF_STATS_FULL = 1 shl 0;
    GIT_DIFF_STATS_SHORT = 1 shl 1;
    GIT_DIFF_STATS_NUMBER = 1 shl 2;
    GIT_DIFF_STATS_INCLUDE_SUMMARY = 1 shl 3;


function git_diff_get_stats(var out:Pgit_diff_stats; var diff:git_diff):cint;cdecl;external External_library name 'git_diff_get_stats';
function git_diff_stats_files_changed(var stats:git_diff_stats):size_t;cdecl;external External_library name 'git_diff_stats_files_changed';
function git_diff_stats_insertions(var stats:git_diff_stats):size_t;cdecl;external External_library name 'git_diff_stats_insertions';
function git_diff_stats_deletions(var stats:git_diff_stats):size_t;cdecl;external External_library name 'git_diff_stats_deletions';
function git_diff_stats_to_buf(var out:git_buf; var stats:git_diff_stats; format:git_diff_stats_format_t; width:size_t):cint;cdecl;external External_library name 'git_diff_stats_to_buf';
procedure git_diff_stats_free(var stats:git_diff_stats);cdecl;external External_library name 'git_diff_stats_free';
type
  git_diff_format_email_flags_t =  Longint;
  Const
    GIT_DIFF_FORMAT_EMAIL_NONE = 0;
    GIT_DIFF_FORMAT_EMAIL_EXCLUDE_SUBJECT_PATCH_MARKER = 1 shl 0;

type
  git_diff_format_email_options = record
      version : cuint;
      flags : uint32_t;
      patch_no : size_t;
      total_patches : size_t;
      id : Pgit_oid;
      summary : pcchar;
      body : pcchar;
      author : Pgit_signature;
    end;

function git_diff_format_email(var out:git_buf; var diff:git_diff; var opts:git_diff_format_email_options):cint;cdecl;external External_library name 'git_diff_format_email';
function git_diff_commit_as_email(var out:git_buf; var repo:git_repository; var commit:git_commit; patch_no:size_t; total_patches:size_t; 
           flags:uint32_t; var diff_opts:git_diff_options):cint;cdecl;external External_library name 'git_diff_commit_as_email';
function git_diff_format_email_options_init(var opts:git_diff_format_email_options; version:cuint):cint;cdecl;external External_library name 'git_diff_format_email_options_init';
type
  git_diff_patchid_options = record
      version : cuint;
    end;

function git_diff_patchid_options_init(var opts:git_diff_patchid_options; version:cuint):cint;cdecl;external External_library name 'git_diff_patchid_options_init';
function git_diff_patchid(var out:git_oid; var diff:git_diff; var opts:git_diff_patchid_options):cint;cdecl;external External_library name 'git_diff_patchid';
type

  git_apply_delta_cb = function (var delta:git_diff_delta; payload:pointer):cint;cdecl;

  git_apply_hunk_cb = function (var hunk:git_diff_hunk; payload:pointer):cint;cdecl;

  git_apply_flags_t =  Longint;
  Const
    GIT_APPLY_CHECK = 1 shl 0;

type
  git_apply_options = record
      version : cuint;
      delta_cb : git_apply_delta_cb;
      hunk_cb : git_apply_hunk_cb;
      payload : pointer;
      flags : cuint;
    end;

function git_apply_options_init(var opts:git_apply_options; version:cuint):cint;cdecl;external External_library name 'git_apply_options_init';
function git_apply_to_tree(var out:Pgit_index; var repo:git_repository; var preimage:git_tree; var diff:git_diff; var options:git_apply_options):cint;cdecl;external External_library name 'git_apply_to_tree';
type
  git_apply_location_t =  Longint;
  Const
    GIT_APPLY_LOCATION_WORKDIR = 0;
    GIT_APPLY_LOCATION_INDEX = 1;
    GIT_APPLY_LOCATION_BOTH = 2;


function git_apply(var repo:git_repository; var diff:git_diff; location:git_apply_location_t; var options:git_apply_options):cint;cdecl;external External_library name 'git_apply';
type
  git_attr_value_t =  Longint;
  Const
    GIT_ATTR_VALUE_UNSPECIFIED = 0;
    GIT_ATTR_VALUE_TRUE = 1;
    GIT_ATTR_VALUE_FALSE = 2;
    GIT_ATTR_VALUE_STRING = 3;


function git_attr_value(attr:pcchar):git_attr_value_t;cdecl;external External_library name 'git_attr_value';
function git_attr_get(value_out:Ppcchar; var repo:git_repository; flags:uint32_t; path:pcchar; name:pcchar):cint;cdecl;external External_library name 'git_attr_get';
function git_attr_get_many(values_out:Ppcchar; var repo:git_repository; flags:uint32_t; path:pcchar; num_attr:size_t; 
           names:Ppcchar):cint;cdecl;external External_library name 'git_attr_get_many';
type

  git_attr_foreach_cb = function (name:pcchar; value:pcchar; payload:pointer):cint;cdecl;

function git_attr_foreach(var repo:git_repository; flags:uint32_t; path:pcchar; callback:git_attr_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_attr_foreach';
function git_attr_cache_flush(var repo:git_repository):cint;cdecl;external External_library name 'git_attr_cache_flush';
function git_attr_add_macro(var repo:git_repository; name:pcchar; values:pcchar):cint;cdecl;external External_library name 'git_attr_add_macro';
function git_blob_lookup(var blob:Pgit_blob; var repo:git_repository; var id:git_oid):cint;cdecl;external External_library name 'git_blob_lookup';
function git_blob_lookup_prefix(var blob:Pgit_blob; var repo:git_repository; var id:git_oid; len:size_t):cint;cdecl;external External_library name 'git_blob_lookup_prefix';
procedure git_blob_free(var blob:git_blob);cdecl;external External_library name 'git_blob_free';
function git_blob_id(var blob:git_blob):Pgit_oid;cdecl;external External_library name 'git_blob_id';
function git_blob_owner(var blob:git_blob):Pgit_repository;cdecl;external External_library name 'git_blob_owner';
function git_blob_rawcontent(var blob:git_blob):pointer;cdecl;external External_library name 'git_blob_rawcontent';
function git_blob_rawsize(var blob:git_blob):git_object_size_t;cdecl;external External_library name 'git_blob_rawsize';
type
  git_blob_filter_flag_t =  Longint;
  Const
    GIT_BLOB_FILTER_CHECK_FOR_BINARY = 1 shl 0;
    GIT_BLOB_FILTER_NO_SYSTEM_ATTRIBUTES = 1 shl 1;
    GIT_BLOB_FILTER_ATTTRIBUTES_FROM_HEAD = 1 shl 2;

type
  git_blob_filter_options = record
      version : cint;
      flags : uint32_t;
    end;

function git_blob_filter(var out:git_buf; var blob:git_blob; as_path:pcchar; var opts:git_blob_filter_options):cint;cdecl;external External_library name 'git_blob_filter';
function git_blob_create_from_workdir(var id:git_oid; var repo:git_repository; relative_path:pcchar):cint;cdecl;external External_library name 'git_blob_create_from_workdir';
function git_blob_create_from_disk(var id:git_oid; var repo:git_repository; path:pcchar):cint;cdecl;external External_library name 'git_blob_create_from_disk';
function git_blob_create_from_stream(var out:Pgit_writestream; var repo:git_repository; hintpath:pcchar):cint;cdecl;external External_library name 'git_blob_create_from_stream';
function git_blob_create_from_stream_commit(var out:git_oid; var stream:git_writestream):cint;cdecl;external External_library name 'git_blob_create_from_stream_commit';
function git_blob_create_from_buffer(var id:git_oid; var repo:git_repository; buffer:pointer; len:size_t):cint;cdecl;external External_library name 'git_blob_create_from_buffer';
function git_blob_is_binary(var blob:git_blob):cint;cdecl;external External_library name 'git_blob_is_binary';
function git_blob_dup(var out:Pgit_blob; var source:git_blob):cint;cdecl;external External_library name 'git_blob_dup';
type
  git_blame_flag_t =  Longint;
  Const
    GIT_BLAME_NORMAL = 0;
    GIT_BLAME_TRACK_COPIES_SAME_FILE = 1 shl 0;
    GIT_BLAME_TRACK_COPIES_SAME_COMMIT_MOVES = 1 shl 1;
    GIT_BLAME_TRACK_COPIES_SAME_COMMIT_COPIES = 1 shl 2;
    GIT_BLAME_TRACK_COPIES_ANY_COMMIT_COPIES = 1 shl 3;
    GIT_BLAME_FIRST_PARENT = 1 shl 4;
    GIT_BLAME_USE_MAILMAP = 1 shl 5;
    GIT_BLAME_IGNORE_WHITESPACE = 1 shl 6;

type
  git_blame_options = record
      version : cuint;
      flags : uint32_t;
      min_match_characters : uint16_t;
      newest_commit : git_oid;
      oldest_commit : git_oid;
      min_line : size_t;
      max_line : size_t;
    end;

function git_blame_options_init(var opts:git_blame_options; version:cuint):cint;cdecl;external External_library name 'git_blame_options_init';
type
  git_blame_hunk = record
      lines_in_hunk : size_t;
      final_commit_id : git_oid;
      final_start_line_number : size_t;
      final_signature : Pgit_signature;
      orig_commit_id : git_oid;
      orig_path : pcchar;
      orig_start_line_number : size_t;
      orig_signature : Pgit_signature;
      boundary : cchar;
    end;

function git_blame_get_hunk_count(var blame:git_blame):uint32_t;cdecl;external External_library name 'git_blame_get_hunk_count';
function git_blame_get_hunk_byindex(var blame:git_blame; index:uint32_t):Pgit_blame_hunk;cdecl;external External_library name 'git_blame_get_hunk_byindex';
function git_blame_get_hunk_byline(var blame:git_blame; lineno:size_t):Pgit_blame_hunk;cdecl;external External_library name 'git_blame_get_hunk_byline';
function git_blame_file(var out:Pgit_blame; var repo:git_repository; path:pcchar; var options:git_blame_options):cint;cdecl;external External_library name 'git_blame_file';
function git_blame_buffer(var out:Pgit_blame; var reference:git_blame; buffer:pcchar; buffer_len:size_t):cint;cdecl;external External_library name 'git_blame_buffer';
procedure git_blame_free(var blame:git_blame);cdecl;external External_library name 'git_blame_free';
function git_branch_create(var out:Pgit_reference; var repo:git_repository; branch_name:pcchar; var target:git_commit; force:cint):cint;cdecl;external External_library name 'git_branch_create';
function git_branch_create_from_annotated(var ref_out:Pgit_reference; var repository:git_repository; branch_name:pcchar; var commit:git_annotated_commit; force:cint):cint;cdecl;external External_library name 'git_branch_create_from_annotated';
function git_branch_delete(var branch:git_reference):cint;cdecl;external External_library name 'git_branch_delete';


function git_branch_iterator_new(var out:Pgit_branch_iterator; var repo:git_repository; list_flags:git_branch_t):cint;cdecl;external External_library name 'git_branch_iterator_new';
function git_branch_next(var out:Pgit_reference; var out_type:git_branch_t; var iter:git_branch_iterator):cint;cdecl;external External_library name 'git_branch_next';
procedure git_branch_iterator_free(var iter:git_branch_iterator);cdecl;external External_library name 'git_branch_iterator_free';
function git_branch_move(var out:Pgit_reference; var branch:git_reference; new_branch_name:pcchar; force:cint):cint;cdecl;external External_library name 'git_branch_move';
function git_branch_lookup(var out:Pgit_reference; var repo:git_repository; branch_name:pcchar; branch_type:git_branch_t):cint;cdecl;external External_library name 'git_branch_lookup';
function git_branch_name(out:Ppcchar; var ref:git_reference):cint;cdecl;external External_library name 'git_branch_name';
function git_branch_upstream(var out:Pgit_reference; var branch:git_reference):cint;cdecl;external External_library name 'git_branch_upstream';
function git_branch_set_upstream(var branch:git_reference; branch_name:pcchar):cint;cdecl;external External_library name 'git_branch_set_upstream';
function git_branch_upstream_name(var out:git_buf; var repo:git_repository; refname:pcchar):cint;cdecl;external External_library name 'git_branch_upstream_name';
function git_branch_is_head(var branch:git_reference):cint;cdecl;external External_library name 'git_branch_is_head';
function git_branch_is_checked_out(var branch:git_reference):cint;cdecl;external External_library name 'git_branch_is_checked_out';
function git_branch_remote_name(var out:git_buf; var repo:git_repository; refname:pcchar):cint;cdecl;external External_library name 'git_branch_remote_name';
function git_branch_upstream_remote(var buf:git_buf; var repo:git_repository; refname:pcchar):cint;cdecl;external External_library name 'git_branch_upstream_remote';
type
  git_cert_t =  Longint;
  Const
    GIT_CERT_NONE = 0;
    GIT_CERT_X509 = 1;
    GIT_CERT_HOSTKEY_LIBSSH2 = 2;
    GIT_CERT_STRARRAY = 3;

type
  git_cert = record
      cert_type : git_cert_t;
    end;


  git_transport_certificate_check_cb = function (var cert:git_cert; valid:cint; host:pcchar; payload:pointer):cint;cdecl;

  git_cert_ssh_t =  Longint;
  Const
    GIT_CERT_SSH_MD5 = 1 shl 0;
    GIT_CERT_SSH_SHA1 = 1 shl 1;
    GIT_CERT_SSH_SHA256 = 1 shl 2;

type
  git_cert_hostkey = record
      parent : git_cert;
      _type : git_cert_ssh_t;
      hash_md5 : TArray0to15OfCuchar;
      hash_sha1 : TArray0to19OfCuchar;
      hash_sha256 : TArray0to31OfCuchar;
    end;

  git_cert_x509 = record
      parent : git_cert;
      data : pointer;
      len : size_t;
    end;

  git_checkout_strategy_t =  Longint;
  Const
    GIT_CHECKOUT_NONE = 0;
    GIT_CHECKOUT_SAFE = 1 shl 0;
    GIT_CHECKOUT_FORCE = 1 shl 1;
    GIT_CHECKOUT_RECREATE_MISSING = 1 shl 2;
    GIT_CHECKOUT_ALLOW_CONFLICTS = 1 shl 4;
    GIT_CHECKOUT_REMOVE_UNTRACKED = 1 shl 5;
    GIT_CHECKOUT_REMOVE_IGNORED = 1 shl 6;
    GIT_CHECKOUT_UPDATE_ONLY = 1 shl 7;
    GIT_CHECKOUT_DONT_UPDATE_INDEX = 1 shl 8;
    GIT_CHECKOUT_NO_REFRESH = 1 shl 9;
    GIT_CHECKOUT_SKIP_UNMERGED = 1 shl 10;
    GIT_CHECKOUT_USE_OURS = 1 shl 11;
    GIT_CHECKOUT_USE_THEIRS = 1 shl 12;
    GIT_CHECKOUT_DISABLE_PATHSPEC_MATCH = 1 shl 13;
    GIT_CHECKOUT_SKIP_LOCKED_DIRECTORIES = 1 shl 18;
    GIT_CHECKOUT_DONT_OVERWRITE_IGNORED = 1 shl 19;
    GIT_CHECKOUT_CONFLICT_STYLE_MERGE = 1 shl 20;
    GIT_CHECKOUT_CONFLICT_STYLE_DIFF3 = 1 shl 21;
    GIT_CHECKOUT_DONT_REMOVE_EXISTING = 1 shl 22;
    GIT_CHECKOUT_DONT_WRITE_INDEX = 1 shl 23;
    GIT_CHECKOUT_UPDATE_SUBMODULES = 1 shl 16;
    GIT_CHECKOUT_UPDATE_SUBMODULES_IF_CHANGED = 1 shl 17;

type
  git_checkout_notify_t =  Longint;
  Const
    GIT_CHECKOUT_NOTIFY_NONE = 0;
    GIT_CHECKOUT_NOTIFY_CONFLICT = 1 shl 0;
    GIT_CHECKOUT_NOTIFY_DIRTY = 1 shl 1;
    GIT_CHECKOUT_NOTIFY_UPDATED = 1 shl 2;
    GIT_CHECKOUT_NOTIFY_UNTRACKED = 1 shl 3;
    GIT_CHECKOUT_NOTIFY_IGNORED = 1 shl 4;
    GIT_CHECKOUT_NOTIFY_ALL = $0FFFF;

type
  git_checkout_perfdata = record
      mkdir_calls : size_t;
      stat_calls : size_t;
      chmod_calls : size_t;
    end;

  git_checkout_notify_cb = function (why:git_checkout_notify_t; path:pcchar; var baseline:git_diff_file; var target:git_diff_file; var workdir:git_diff_file; 
               payload:pointer):cint;cdecl;

  git_checkout_progress_cb = procedure (path:pcchar; completed_steps:size_t; total_steps:size_t; payload:pointer);cdecl;

  git_checkout_perfdata_cb = procedure (var perfdata:git_checkout_perfdata; payload:pointer);cdecl;

  git_checkout_options = record
      version : cuint;
      checkout_strategy : cuint;
      disable_filters : cint;
      dir_mode : cuint;
      file_mode : cuint;
      file_open_flags : cint;
      notify_flags : cuint;
      notify_cb : git_checkout_notify_cb;
      notify_payload : pointer;
      progress_cb : git_checkout_progress_cb;
      progress_payload : pointer;
      paths : git_strarray;
      baseline : Pgit_tree;
      baseline_index : Pgit_index;
      target_directory : pcchar;
      ancestor_label : pcchar;
      our_label : pcchar;
      their_label : pcchar;
      perfdata_cb : git_checkout_perfdata_cb;
      perfdata_payload : pointer;
    end;

function git_checkout_options_init(var opts:git_checkout_options; version:cuint):cint;cdecl;external External_library name 'git_checkout_options_init';
function git_checkout_head(var repo:git_repository; var opts:git_checkout_options):cint;cdecl;external External_library name 'git_checkout_head';
function git_checkout_index(var repo:git_repository; var index:git_index; var opts:git_checkout_options):cint;cdecl;external External_library name 'git_checkout_index';
function git_checkout_tree(var repo:git_repository; var treeish:git_object; var opts:git_checkout_options):cint;cdecl;external External_library name 'git_checkout_tree';
type
  git_oidarray = record
      ids : Pgit_oid;
      count : size_t;
    end;

procedure git_oidarray_free(var array:git_oidarray);cdecl;external External_library name 'git_oidarray_free';
type

  git_indexer_progress = record
      total_objects : cuint;
      indexed_objects : cuint;
      received_objects : cuint;
      local_objects : cuint;
      total_deltas : cuint;
      indexed_deltas : cuint;
      received_bytes : size_t;
    end;

  git_indexer_progress_cb = function (var stats:git_indexer_progress; payload:pointer):cint;cdecl;

  git_indexer_options = record
      version : cuint;
      progress_cb : git_indexer_progress_cb;
      progress_cb_payload : pointer;
      verify : cuchar;
    end;

function git_indexer_options_init(var opts:git_indexer_options; version:cuint):cint;cdecl;external External_library name 'git_indexer_options_init';
function git_indexer_new(var out:Pgit_indexer; path:pcchar; mode:cuint; var odb:git_odb; var opts:git_indexer_options):cint;cdecl;external External_library name 'git_indexer_new';
function git_indexer_append(var idx:git_indexer; data:pointer; size:size_t; var stats:git_indexer_progress):cint;cdecl;external External_library name 'git_indexer_append';
function git_indexer_commit(var idx:git_indexer; var stats:git_indexer_progress):cint;cdecl;external External_library name 'git_indexer_commit';
function git_indexer_hash(var idx:git_indexer):Pgit_oid;cdecl;external External_library name 'git_indexer_hash';
procedure git_indexer_free(var idx:git_indexer);cdecl;external External_library name 'git_indexer_free';
type
  git_index_time = record
      seconds : int32_t;
      nanoseconds : uint32_t;
    end;

  git_index_entry = record
      ctime : git_index_time;
      mtime : git_index_time;
      dev : uint32_t;
      ino : uint32_t;
      mode : uint32_t;
      uid : uint32_t;
      gid : uint32_t;
      file_size : uint32_t;
      id : git_oid;
      flags : uint16_t;
      flags_extended : uint16_t;
      path : pcchar;
    end;

  git_index_entry_flag_t =  Longint;
  Const
    GIT_INDEX_ENTRY_EXTENDED = $4000;
    GIT_INDEX_ENTRY_VALID = $8000;

type
  git_index_entry_extended_flag_t =  Longint;
  Const
    GIT_INDEX_ENTRY_INTENT_TO_ADD = 1 shl 13;
    GIT_INDEX_ENTRY_SKIP_WORKTREE = 1 shl 14;
    GIT_INDEX_ENTRY_EXTENDED_FLAGS = GIT_INDEX_ENTRY_INTENT_TO_ADD or GIT_INDEX_ENTRY_SKIP_WORKTREE;
    GIT_INDEX_ENTRY_UPTODATE = 1 shl 2;

type
  git_index_capability_t =  Longint;
  Const
    GIT_INDEX_CAPABILITY_IGNORE_CASE = 1;
    GIT_INDEX_CAPABILITY_NO_FILEMODE = 2;
    GIT_INDEX_CAPABILITY_NO_SYMLINKS = 4;
    GIT_INDEX_CAPABILITY_FROM_OWNER = -(1);

type

  git_index_matched_path_cb = function (path:pcchar; matched_pathspec:pcchar; payload:pointer):cint;cdecl;

  git_index_add_option_t =  Longint;
  Const
    GIT_INDEX_ADD_DEFAULT = 0;
    GIT_INDEX_ADD_FORCE = 1 shl 0;
    GIT_INDEX_ADD_DISABLE_PATHSPEC_MATCH = 1 shl 1;
    GIT_INDEX_ADD_CHECK_PATHSPEC = 1 shl 2;

type
  git_index_stage_t =  Longint;
  Const
    GIT_INDEX_STAGE_ANY = -(1);
    GIT_INDEX_STAGE_NORMAL = 0;
    GIT_INDEX_STAGE_ANCESTOR = 1;
    GIT_INDEX_STAGE_OURS = 2;
    GIT_INDEX_STAGE_THEIRS = 3;


function git_index_open(var out:Pgit_index; index_path:pcchar):cint;cdecl;external External_library name 'git_index_open';
function git_index_new(var out:Pgit_index):cint;cdecl;external External_library name 'git_index_new';
procedure git_index_free(var index:git_index);cdecl;external External_library name 'git_index_free';
function git_index_owner(var index:git_index):Pgit_repository;cdecl;external External_library name 'git_index_owner';
function git_index_caps(var index:git_index):cint;cdecl;external External_library name 'git_index_caps';
function git_index_set_caps(var index:git_index; caps:cint):cint;cdecl;external External_library name 'git_index_set_caps';
function git_index_version(var index:git_index):cuint;cdecl;external External_library name 'git_index_version';
function git_index_set_version(var index:git_index; version:cuint):cint;cdecl;external External_library name 'git_index_set_version';
function git_index_read(var index:git_index; force:cint):cint;cdecl;external External_library name 'git_index_read';
function git_index_write(var index:git_index):cint;cdecl;external External_library name 'git_index_write';
function git_index_path(var index:git_index):pcchar;cdecl;external External_library name 'git_index_path';
function git_index_checksum(var index:git_index):Pgit_oid;cdecl;external External_library name 'git_index_checksum';
function git_index_read_tree(var index:git_index; var tree:git_tree):cint;cdecl;external External_library name 'git_index_read_tree';
function git_index_write_tree(var out:git_oid; var index:git_index):cint;cdecl;external External_library name 'git_index_write_tree';
function git_index_write_tree_to(var out:git_oid; var index:git_index; var repo:git_repository):cint;cdecl;external External_library name 'git_index_write_tree_to';
function git_index_entrycount(var index:git_index):size_t;cdecl;external External_library name 'git_index_entrycount';
function git_index_clear(var index:git_index):cint;cdecl;external External_library name 'git_index_clear';
function git_index_get_byindex(var index:git_index; n:size_t):Pgit_index_entry;cdecl;external External_library name 'git_index_get_byindex';
function git_index_get_bypath(var index:git_index; path:pcchar; stage:cint):Pgit_index_entry;cdecl;external External_library name 'git_index_get_bypath';
function git_index_remove(var index:git_index; path:pcchar; stage:cint):cint;cdecl;external External_library name 'git_index_remove';
function git_index_remove_directory(var index:git_index; dir:pcchar; stage:cint):cint;cdecl;external External_library name 'git_index_remove_directory';
function git_index_add(var index:git_index; var source_entry:git_index_entry):cint;cdecl;external External_library name 'git_index_add';
function git_index_entry_stage(var entry:git_index_entry):cint;cdecl;external External_library name 'git_index_entry_stage';
function git_index_entry_is_conflict(var entry:git_index_entry):cint;cdecl;external External_library name 'git_index_entry_is_conflict';
function git_index_iterator_new(var iterator_out:Pgit_index_iterator; var index:git_index):cint;cdecl;external External_library name 'git_index_iterator_new';
function git_index_iterator_next(var out:Pgit_index_entry; var iterator:git_index_iterator):cint;cdecl;external External_library name 'git_index_iterator_next';
procedure git_index_iterator_free(var iterator:git_index_iterator);cdecl;external External_library name 'git_index_iterator_free';
function git_index_add_bypath(var index:git_index; path:pcchar):cint;cdecl;external External_library name 'git_index_add_bypath';
function git_index_add_from_buffer(var index:git_index; var entry:git_index_entry; buffer:pointer; len:size_t):cint;cdecl;external External_library name 'git_index_add_from_buffer';
function git_index_remove_bypath(var index:git_index; path:pcchar):cint;cdecl;external External_library name 'git_index_remove_bypath';
function git_index_add_all(var index:git_index; var pathspec:git_strarray; flags:cuint; callback:git_index_matched_path_cb; payload:pointer):cint;cdecl;external External_library name 'git_index_add_all';
function git_index_remove_all(var index:git_index; var pathspec:git_strarray; callback:git_index_matched_path_cb; payload:pointer):cint;cdecl;external External_library name 'git_index_remove_all';
function git_index_update_all(var index:git_index; var pathspec:git_strarray; callback:git_index_matched_path_cb; payload:pointer):cint;cdecl;external External_library name 'git_index_update_all';
function git_index_find(var at_pos:size_t; var index:git_index; path:pcchar):cint;cdecl;external External_library name 'git_index_find';
function git_index_find_prefix(var at_pos:size_t; var index:git_index; prefix:pcchar):cint;cdecl;external External_library name 'git_index_find_prefix';
function git_index_conflict_add(var index:git_index; var ancestor_entry:git_index_entry; var our_entry:git_index_entry; var their_entry:git_index_entry):cint;cdecl;external External_library name 'git_index_conflict_add';
function git_index_conflict_get(var ancestor_out:Pgit_index_entry; var our_out:Pgit_index_entry; var their_out:Pgit_index_entry; var index:git_index; path:pcchar):cint;cdecl;external External_library name 'git_index_conflict_get';
function git_index_conflict_remove(var index:git_index; path:pcchar):cint;cdecl;external External_library name 'git_index_conflict_remove';
function git_index_conflict_cleanup(var index:git_index):cint;cdecl;external External_library name 'git_index_conflict_cleanup';
function git_index_has_conflicts(var index:git_index):cint;cdecl;external External_library name 'git_index_has_conflicts';
function git_index_conflict_iterator_new(var iterator_out:Pgit_index_conflict_iterator; var index:git_index):cint;cdecl;external External_library name 'git_index_conflict_iterator_new';
function git_index_conflict_next(var ancestor_out:Pgit_index_entry; var our_out:Pgit_index_entry; var their_out:Pgit_index_entry; var iterator:git_index_conflict_iterator):cint;cdecl;external External_library name 'git_index_conflict_next';
procedure git_index_conflict_iterator_free(var iterator:git_index_conflict_iterator);cdecl;external External_library name 'git_index_conflict_iterator_free';
type
  git_merge_file_input = record
      version : cuint;
      ptr : pcchar;
      size : size_t;
      path : pcchar;
      mode : cuint;
    end;

function git_merge_file_input_init(var opts:git_merge_file_input; version:cuint):cint;cdecl;external External_library name 'git_merge_file_input_init';
type
  git_merge_flag_t =  Longint;
  Const
    GIT_MERGE_FIND_RENAMES = 1 shl 0;
    GIT_MERGE_FAIL_ON_CONFLICT = 1 shl 1;
    GIT_MERGE_SKIP_REUC = 1 shl 2;
    GIT_MERGE_NO_RECURSIVE = 1 shl 3;

type
  git_merge_file_favor_t =  Longint;
  Const
    GIT_MERGE_FILE_FAVOR_NORMAL = 0;
    GIT_MERGE_FILE_FAVOR_OURS = 1;
    GIT_MERGE_FILE_FAVOR_THEIRS = 2;
    GIT_MERGE_FILE_FAVOR_UNION = 3;

type
  git_merge_file_flag_t =  Longint;
  Const
    GIT_MERGE_FILE_DEFAULT = 0;
    GIT_MERGE_FILE_STYLE_MERGE = 1 shl 0;
    GIT_MERGE_FILE_STYLE_DIFF3 = 1 shl 1;
    GIT_MERGE_FILE_SIMPLIFY_ALNUM = 1 shl 2;
    GIT_MERGE_FILE_IGNORE_WHITESPACE = 1 shl 3;
    GIT_MERGE_FILE_IGNORE_WHITESPACE_CHANGE = 1 shl 4;
    GIT_MERGE_FILE_IGNORE_WHITESPACE_EOL = 1 shl 5;
    GIT_MERGE_FILE_DIFF_PATIENCE = 1 shl 6;
    GIT_MERGE_FILE_DIFF_MINIMAL = 1 shl 7;

type
  git_merge_file_options = record
      version : cuint;
      ancestor_label : pcchar;
      our_label : pcchar;
      their_label : pcchar;
      favor : git_merge_file_favor_t;
      flags : uint32_t;
      marker_size : cushort;
    end;

function git_merge_file_options_init(var opts:git_merge_file_options; version:cuint):cint;cdecl;external External_library name 'git_merge_file_options_init';
type
  git_merge_file_result = record
      automergeable : cuint;
      path : pcchar;
      mode : cuint;
      ptr : pcchar;
      len : size_t;
    end;

  git_merge_options = record
      version : cuint;
      flags : uint32_t;
      rename_threshold : cuint;
      target_limit : cuint;
      metric : Pgit_diff_similarity_metric;
      recursion_limit : cuint;
      default_driver : pcchar;
      file_favor : git_merge_file_favor_t;
      file_flags : uint32_t;
    end;

function git_merge_options_init(var opts:git_merge_options; version:cuint):cint;cdecl;external External_library name 'git_merge_options_init';
type
  git_merge_analysis_t =  Longint;
  Const
    GIT_MERGE_ANALYSIS_NONE = 0;
    GIT_MERGE_ANALYSIS_NORMAL = 1 shl 0;
    GIT_MERGE_ANALYSIS_UP_TO_DATE = 1 shl 1;
    GIT_MERGE_ANALYSIS_FASTFORWARD = 1 shl 2;
    GIT_MERGE_ANALYSIS_UNBORN = 1 shl 3;

type
  git_merge_preference_t =  Longint;
  Const
    GIT_MERGE_PREFERENCE_NONE = 0;
    GIT_MERGE_PREFERENCE_NO_FASTFORWARD = 1 shl 0;
    GIT_MERGE_PREFERENCE_FASTFORWARD_ONLY = 1 shl 1;


function git_merge_analysis(var analysis_out:git_merge_analysis_t; var preference_out:git_merge_preference_t; var repo:git_repository; var their_heads:Pgit_annotated_commit; their_heads_len:size_t):cint;cdecl;external External_library name 'git_merge_analysis';
function git_merge_analysis_for_ref(var analysis_out:git_merge_analysis_t; var preference_out:git_merge_preference_t; var repo:git_repository; var our_ref:git_reference; var their_heads:Pgit_annotated_commit; 
           their_heads_len:size_t):cint;cdecl;external External_library name 'git_merge_analysis_for_ref';
function git_merge_base(var out:git_oid; var repo:git_repository; var one:git_oid; var two:git_oid):cint;cdecl;external External_library name 'git_merge_base';
function git_merge_bases(var out:git_oidarray; var repo:git_repository; var one:git_oid; var two:git_oid):cint;cdecl;external External_library name 'git_merge_bases';
function git_merge_base_many(var out:git_oid; var repo:git_repository; length:size_t; input_array:Pgit_oid):cint;cdecl;external External_library name 'git_merge_base_many';
function git_merge_bases_many(var out:git_oidarray; var repo:git_repository; length:size_t; input_array:Pgit_oid):cint;cdecl;external External_library name 'git_merge_bases_many';
function git_merge_base_octopus(var out:git_oid; var repo:git_repository; length:size_t; input_array:Pgit_oid):cint;cdecl;external External_library name 'git_merge_base_octopus';
function git_merge_file(var out:git_merge_file_result; var ancestor:git_merge_file_input; var ours:git_merge_file_input; var theirs:git_merge_file_input; var opts:git_merge_file_options):cint;cdecl;external External_library name 'git_merge_file';
function git_merge_file_from_index(var out:git_merge_file_result; var repo:git_repository; var ancestor:git_index_entry; var ours:git_index_entry; var theirs:git_index_entry; 
           var opts:git_merge_file_options):cint;cdecl;external External_library name 'git_merge_file_from_index';
procedure git_merge_file_result_free(var result:git_merge_file_result);cdecl;external External_library name 'git_merge_file_result_free';
function git_merge_trees(var out:Pgit_index; var repo:git_repository; var ancestor_tree:git_tree; var our_tree:git_tree; var their_tree:git_tree; 
           var opts:git_merge_options):cint;cdecl;external External_library name 'git_merge_trees';
function git_merge_commits(var out:Pgit_index; var repo:git_repository; var our_commit:git_commit; var their_commit:git_commit; var opts:git_merge_options):cint;cdecl;external External_library name 'git_merge_commits';
function git_merge(var repo:git_repository; var their_heads:Pgit_annotated_commit; their_heads_len:size_t; var merge_opts:git_merge_options; var checkout_opts:git_checkout_options):cint;cdecl;external External_library name 'git_merge';
type
  git_cherrypick_options = record
      version : cuint;
      mainline : cuint;
      merge_opts : git_merge_options;
      checkout_opts : git_checkout_options;
    end;

function git_cherrypick_options_init(var opts:git_cherrypick_options; version:cuint):cint;cdecl;external External_library name 'git_cherrypick_options_init';
function git_cherrypick_commit(var out:Pgit_index; var repo:git_repository; var cherrypick_commit:git_commit; var our_commit:git_commit; mainline:cuint; 
           var merge_options:git_merge_options):cint;cdecl;external External_library name 'git_cherrypick_commit';
function git_cherrypick(var repo:git_repository; var commit:git_commit; var cherrypick_options:git_cherrypick_options):cint;cdecl;external External_library name 'git_cherrypick';
type
  git_direction =  Longint;
  Const
    GIT_DIRECTION_FETCH = 0;
    GIT_DIRECTION_PUSH = 1;

type
  git_remote_head = record
      local : cint;
      oid : git_oid;
      loid : git_oid;
      name : pcchar;
      symref_target : pcchar;
    end;


function git_refspec_parse(var refspec:Pgit_refspec; input:pcchar; is_fetch:cint):cint;cdecl;external External_library name 'git_refspec_parse';
procedure git_refspec_free(var refspec:git_refspec);cdecl;external External_library name 'git_refspec_free';
function git_refspec_src(var refspec:git_refspec):pcchar;cdecl;external External_library name 'git_refspec_src';
function git_refspec_dst(var refspec:git_refspec):pcchar;cdecl;external External_library name 'git_refspec_dst';
function git_refspec_string(var refspec:git_refspec):pcchar;cdecl;external External_library name 'git_refspec_string';
function git_refspec_force(var refspec:git_refspec):cint;cdecl;external External_library name 'git_refspec_force';
function git_refspec_direction(var spec:git_refspec):git_direction;cdecl;external External_library name 'git_refspec_direction';
function git_refspec_src_matches(var refspec:git_refspec; refname:pcchar):cint;cdecl;external External_library name 'git_refspec_src_matches';
function git_refspec_dst_matches(var refspec:git_refspec; refname:pcchar):cint;cdecl;external External_library name 'git_refspec_dst_matches';
function git_refspec_transform(var out:git_buf; var spec:git_refspec; name:pcchar):cint;cdecl;external External_library name 'git_refspec_transform';
function git_refspec_rtransform(var out:git_buf; var spec:git_refspec; name:pcchar):cint;cdecl;external External_library name 'git_refspec_rtransform';
type
  git_credential_t =  Longint;
  Const
    GIT_CREDENTIAL_USERPASS_PLAINTEXT = 1 shl 0;
    GIT_CREDENTIAL_SSH_KEY = 1 shl 1;
    GIT_CREDENTIAL_SSH_CUSTOM = 1 shl 2;
    GIT_CREDENTIAL_DEFAULT = 1 shl 3;
    GIT_CREDENTIAL_SSH_INTERACTIVE = 1 shl 4;
    GIT_CREDENTIAL_USERNAME = 1 shl 5;
    GIT_CREDENTIAL_SSH_MEMORY = 1 shl 6;

type
  git_credential = git_credential_default;

  git_credential_acquire_cb = function (var out:Pgit_credential; url:pcchar; username_from_url:pcchar; allowed_types:cuint; payload:pointer):cint;cdecl;

procedure git_credential_free(var cred:git_credential);cdecl;external External_library name 'git_credential_free';
function git_credential_has_username(var cred:git_credential):cint;cdecl;external External_library name 'git_credential_has_username';
function git_credential_get_username(var cred:git_credential):pcchar;cdecl;external External_library name 'git_credential_get_username';
function git_credential_userpass_plaintext_new(var out:Pgit_credential; username:pcchar; password:pcchar):cint;cdecl;external External_library name 'git_credential_userpass_plaintext_new';
function git_credential_default_new(var out:Pgit_credential):cint;cdecl;external External_library name 'git_credential_default_new';
function git_credential_username_new(var out:Pgit_credential; username:pcchar):cint;cdecl;external External_library name 'git_credential_username_new';
function git_credential_ssh_key_new(var out:Pgit_credential; username:pcchar; publickey:pcchar; privatekey:pcchar; passphrase:pcchar):cint;cdecl;external External_library name 'git_credential_ssh_key_new';
function git_credential_ssh_key_memory_new(var out:Pgit_credential; username:pcchar; publickey:pcchar; privatekey:pcchar; passphrase:pcchar):cint;cdecl;external External_library name 'git_credential_ssh_key_memory_new';
type
  _LIBSSH2_SESSION = LIBSSH2_SESSION;
  _LIBSSH2_USERAUTH_KBDINT_PROMPT = LIBSSH2_USERAUTH_KBDINT_PROMPT;
  _LIBSSH2_USERAUTH_KBDINT_RESPONSE = LIBSSH2_USERAUTH_KBDINT_RESPONSE;

  git_credential_ssh_interactive_cb = procedure (name:pcchar; name_len:cint; instruction:pcchar; instruction_len:cint; num_prompts:cint; 
                var prompts:LIBSSH2_USERAUTH_KBDINT_PROMPT; var responses:LIBSSH2_USERAUTH_KBDINT_RESPONSE; abstract:Ppointer);cdecl;

function git_credential_ssh_interactive_new(var out:Pgit_credential; username:pcchar; prompt_callback:git_credential_ssh_interactive_cb; payload:pointer):cint;cdecl;external External_library name 'git_credential_ssh_interactive_new';
function git_credential_ssh_key_from_agent(var out:Pgit_credential; username:pcchar):cint;cdecl;external External_library name 'git_credential_ssh_key_from_agent';
type

  git_credential_sign_cb = function (var session:LIBSSH2_SESSION; sig:Ppcuchar; var sig_len:size_t; data:pcuchar; data_len:size_t; 
               abstract:Ppointer):cint;cdecl;

function git_credential_ssh_custom_new(var out:Pgit_credential; username:pcchar; publickey:pcchar; publickey_len:size_t; sign_callback:git_credential_sign_cb; 
           payload:pointer):cint;cdecl;external External_library name 'git_credential_ssh_custom_new';
type

  git_transport_message_cb = function (str:pcchar; len:cint; payload:pointer):cint;cdecl;

  git_transport_cb = function (var out:Pgit_transport; var owner:git_remote; param:pointer):cint;cdecl;

  git_packbuilder_stage_t =  Longint;
  Const
    GIT_PACKBUILDER_ADDING_OBJECTS = 0;
    GIT_PACKBUILDER_DELTAFICATION = 1;


function git_packbuilder_new(var out:Pgit_packbuilder; var repo:git_repository):cint;cdecl;external External_library name 'git_packbuilder_new';
function git_packbuilder_set_threads(var pb:git_packbuilder; n:cuint):cuint;cdecl;external External_library name 'git_packbuilder_set_threads';
function git_packbuilder_insert(var pb:git_packbuilder; var id:git_oid; name:pcchar):cint;cdecl;external External_library name 'git_packbuilder_insert';
function git_packbuilder_insert_tree(var pb:git_packbuilder; var id:git_oid):cint;cdecl;external External_library name 'git_packbuilder_insert_tree';
function git_packbuilder_insert_commit(var pb:git_packbuilder; var id:git_oid):cint;cdecl;external External_library name 'git_packbuilder_insert_commit';
function git_packbuilder_insert_walk(var pb:git_packbuilder; var walk:git_revwalk):cint;cdecl;external External_library name 'git_packbuilder_insert_walk';
function git_packbuilder_insert_recur(var pb:git_packbuilder; var id:git_oid; name:pcchar):cint;cdecl;external External_library name 'git_packbuilder_insert_recur';
function git_packbuilder_write_buf(var buf:git_buf; var pb:git_packbuilder):cint;cdecl;external External_library name 'git_packbuilder_write_buf';
function git_packbuilder_write(var pb:git_packbuilder; path:pcchar; mode:cuint; progress_cb:git_indexer_progress_cb; progress_cb_payload:pointer):cint;cdecl;external External_library name 'git_packbuilder_write';
function git_packbuilder_hash(var pb:git_packbuilder):Pgit_oid;cdecl;external External_library name 'git_packbuilder_hash';
type

  git_packbuilder_foreach_cb = function (buf:pointer; size:size_t; payload:pointer):cint;cdecl;

function git_packbuilder_foreach(var pb:git_packbuilder; cb:git_packbuilder_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_packbuilder_foreach';
function git_packbuilder_object_count(var pb:git_packbuilder):size_t;cdecl;external External_library name 'git_packbuilder_object_count';
function git_packbuilder_written(var pb:git_packbuilder):size_t;cdecl;external External_library name 'git_packbuilder_written';
type

  git_packbuilder_progress = function (stage:cint; current:uint32_t; total:uint32_t; payload:pointer):cint;cdecl;

function git_packbuilder_set_callbacks(var pb:git_packbuilder; progress_cb:git_packbuilder_progress; progress_cb_payload:pointer):cint;cdecl;external External_library name 'git_packbuilder_set_callbacks';
procedure git_packbuilder_free(var pb:git_packbuilder);cdecl;external External_library name 'git_packbuilder_free';
type
  git_proxy_t =  Longint;
  Const
    GIT_PROXY_NONE = 0;
    GIT_PROXY_AUTO = 1;
    GIT_PROXY_SPECIFIED = 2;

type
  git_proxy_options = record
      version : cuint;
      _type : git_proxy_t;
      url : pcchar;
      credentials : git_credential_acquire_cb;
      certificate_check : git_transport_certificate_check_cb;
      payload : pointer;
    end;

function git_proxy_options_init(var opts:git_proxy_options; version:cuint):cint;cdecl;external External_library name 'git_proxy_options_init';
function git_remote_create(var out:Pgit_remote; var repo:git_repository; name:pcchar; url:pcchar):cint;cdecl;external External_library name 'git_remote_create';
type
  git_remote_create_flags =  Longint;
  Const
    GIT_REMOTE_CREATE_SKIP_INSTEADOF = 1 shl 0;
    GIT_REMOTE_CREATE_SKIP_DEFAULT_FETCHSPEC = 1 shl 1;

type
  git_remote_create_options = record
      version : cuint;
      repository : Pgit_repository;
      name : pcchar;
      fetchspec : pcchar;
      flags : cuint;
    end;

function git_remote_create_options_init(var opts:git_remote_create_options; version:cuint):cint;cdecl;external External_library name 'git_remote_create_options_init';
function git_remote_create_with_opts(var out:Pgit_remote; url:pcchar; var opts:git_remote_create_options):cint;cdecl;external External_library name 'git_remote_create_with_opts';
function git_remote_create_with_fetchspec(var out:Pgit_remote; var repo:git_repository; name:pcchar; url:pcchar; fetch:pcchar):cint;cdecl;external External_library name 'git_remote_create_with_fetchspec';
function git_remote_create_anonymous(var out:Pgit_remote; var repo:git_repository; url:pcchar):cint;cdecl;external External_library name 'git_remote_create_anonymous';
function git_remote_create_detached(var out:Pgit_remote; url:pcchar):cint;cdecl;external External_library name 'git_remote_create_detached';
function git_remote_lookup(var out:Pgit_remote; var repo:git_repository; name:pcchar):cint;cdecl;external External_library name 'git_remote_lookup';
function git_remote_dup(var dest:Pgit_remote; var source:git_remote):cint;cdecl;external External_library name 'git_remote_dup';
function git_remote_owner(var remote:git_remote):Pgit_repository;cdecl;external External_library name 'git_remote_owner';
function git_remote_name(var remote:git_remote):pcchar;cdecl;external External_library name 'git_remote_name';
function git_remote_url(var remote:git_remote):pcchar;cdecl;external External_library name 'git_remote_url';
function git_remote_pushurl(var remote:git_remote):pcchar;cdecl;external External_library name 'git_remote_pushurl';
function git_remote_set_url(var repo:git_repository; remote:pcchar; url:pcchar):cint;cdecl;external External_library name 'git_remote_set_url';
function git_remote_set_pushurl(var repo:git_repository; remote:pcchar; url:pcchar):cint;cdecl;external External_library name 'git_remote_set_pushurl';
function git_remote_add_fetch(var repo:git_repository; remote:pcchar; refspec:pcchar):cint;cdecl;external External_library name 'git_remote_add_fetch';
function git_remote_get_fetch_refspecs(var array:git_strarray; var remote:git_remote):cint;cdecl;external External_library name 'git_remote_get_fetch_refspecs';
function git_remote_add_push(var repo:git_repository; remote:pcchar; refspec:pcchar):cint;cdecl;external External_library name 'git_remote_add_push';
function git_remote_get_push_refspecs(var array:git_strarray; var remote:git_remote):cint;cdecl;external External_library name 'git_remote_get_push_refspecs';
function git_remote_refspec_count(var remote:git_remote):size_t;cdecl;external External_library name 'git_remote_refspec_count';
function git_remote_get_refspec(var remote:git_remote; n:size_t):Pgit_refspec;cdecl;external External_library name 'git_remote_get_refspec';
function git_remote_connect(var remote:git_remote; direction:git_direction; var callbacks:git_remote_callbacks; var proxy_opts:git_proxy_options; var custom_headers:git_strarray):cint;cdecl;external External_library name 'git_remote_connect';
function git_remote_ls(var out:PPgit_remote_head; var size:size_t; var remote:git_remote):cint;cdecl;external External_library name 'git_remote_ls';
function git_remote_connected(var remote:git_remote):cint;cdecl;external External_library name 'git_remote_connected';
function git_remote_stop(var remote:git_remote):cint;cdecl;external External_library name 'git_remote_stop';
function git_remote_disconnect(var remote:git_remote):cint;cdecl;external External_library name 'git_remote_disconnect';
procedure git_remote_free(var remote:git_remote);cdecl;external External_library name 'git_remote_free';
function git_remote_list(var out:git_strarray; var repo:git_repository):cint;cdecl;external External_library name 'git_remote_list';
type
  git_remote_completion_t =  Longint;
  Const
    GIT_REMOTE_COMPLETION_DOWNLOAD = 0;
    GIT_REMOTE_COMPLETION_INDEXING = 1;
    GIT_REMOTE_COMPLETION_ERROR = 2;

type

  git_push_transfer_progress_cb = function (current:cuint; total:cuint; bytes:size_t; payload:pointer):cint;cdecl;

  git_push_update = record
      src_refname : pcchar;
      dst_refname : pcchar;
      src : git_oid;
      dst : git_oid;
    end;

  git_push_negotiation = function (var updates:Pgit_push_update; len:size_t; payload:pointer):cint;cdecl;

  git_push_update_reference_cb = function (refname:pcchar; status:pcchar; data:pointer):cint;cdecl;

  git_url_resolve_cb = function (var url_resolved:git_buf; url:pcchar; direction:cint; payload:pointer):cint;cdecl;
  git_remote_callbacks = record
      version : cuint;cdecl;
      sideband_progress : git_transport_message_cb;
      completion : TFunction_typeGit_remote_completion_tDataPointerCint;cdecl;
      credentials : git_credential_acquire_cb;
      certificate_check : git_transport_certificate_check_cb;
      transfer_progress : git_indexer_progress_cb;
      update_tips : TFunctionRefnamePccharVarAGit_oidVarBGit_oidDataPointerCint;cdecl;
      pack_progress : git_packbuilder_progress;
      push_transfer_progress : git_push_transfer_progress_cb;
      push_update_reference : git_push_update_reference_cb;
      push_negotiation : git_push_negotiation;
      transport : git_transport_cb;
      payload : pointer;
      resolve_url : git_url_resolve_cb;
    end;


function git_remote_init_callbacks(var opts:git_remote_callbacks; version:cuint):cint;cdecl;external External_library name 'git_remote_init_callbacks';
type
  git_fetch_prune_t =  Longint;
  Const
    GIT_FETCH_PRUNE_UNSPECIFIED = 0;
    GIT_FETCH_PRUNE = 1;
    GIT_FETCH_NO_PRUNE = 2;

type
  git_remote_autotag_option_t =  Longint;
  Const
    GIT_REMOTE_DOWNLOAD_TAGS_UNSPECIFIED = 0;
    GIT_REMOTE_DOWNLOAD_TAGS_AUTO = 1;
    GIT_REMOTE_DOWNLOAD_TAGS_NONE = 2;
    GIT_REMOTE_DOWNLOAD_TAGS_ALL = 3;

type
  git_fetch_options = record
      version : cint;
      callbacks : git_remote_callbacks;
      prune : git_fetch_prune_t;
      update_fetchhead : cint;
      download_tags : git_remote_autotag_option_t;
      proxy_opts : git_proxy_options;
      custom_headers : git_strarray;
    end;

function git_fetch_options_init(var opts:git_fetch_options; version:cuint):cint;cdecl;external External_library name 'git_fetch_options_init';
type
  git_push_options = record
      version : cuint;
      pb_parallelism : cuint;
      callbacks : git_remote_callbacks;
      proxy_opts : git_proxy_options;
      custom_headers : git_strarray;
    end;

function git_push_options_init(var opts:git_push_options; version:cuint):cint;cdecl;external External_library name 'git_push_options_init';
function git_remote_download(var remote:git_remote; var refspecs:git_strarray; var opts:git_fetch_options):cint;cdecl;external External_library name 'git_remote_download';
function git_remote_upload(var remote:git_remote; var refspecs:git_strarray; var opts:git_push_options):cint;cdecl;external External_library name 'git_remote_upload';
function git_remote_update_tips(var remote:git_remote; var callbacks:git_remote_callbacks; update_fetchhead:cint; download_tags:git_remote_autotag_option_t; reflog_message:pcchar):cint;cdecl;external External_library name 'git_remote_update_tips';
function git_remote_fetch(var remote:git_remote; var refspecs:git_strarray; var opts:git_fetch_options; reflog_message:pcchar):cint;cdecl;external External_library name 'git_remote_fetch';
function git_remote_prune(var remote:git_remote; var callbacks:git_remote_callbacks):cint;cdecl;external External_library name 'git_remote_prune';
function git_remote_push(var remote:git_remote; var refspecs:git_strarray; var opts:git_push_options):cint;cdecl;external External_library name 'git_remote_push';
function git_remote_stats(var remote:git_remote):Pgit_indexer_progress;cdecl;external External_library name 'git_remote_stats';
function git_remote_autotag(var remote:git_remote):git_remote_autotag_option_t;cdecl;external External_library name 'git_remote_autotag';
function git_remote_set_autotag(var repo:git_repository; remote:pcchar; value:git_remote_autotag_option_t):cint;cdecl;external External_library name 'git_remote_set_autotag';
function git_remote_prune_refs(var remote:git_remote):cint;cdecl;external External_library name 'git_remote_prune_refs';
function git_remote_rename(var problems:git_strarray; var repo:git_repository; name:pcchar; new_name:pcchar):cint;cdecl;external External_library name 'git_remote_rename';
function git_remote_is_valid_name(remote_name:pcchar):cint;cdecl;external External_library name 'git_remote_is_valid_name';
function git_remote_delete(var repo:git_repository; name:pcchar):cint;cdecl;external External_library name 'git_remote_delete';
function git_remote_default_branch(var out:git_buf; var remote:git_remote):cint;cdecl;external External_library name 'git_remote_default_branch';
type
  git_clone_local_t =  Longint;
  Const
    GIT_CLONE_LOCAL_AUTO = 0;
    GIT_CLONE_LOCAL = 1;
    GIT_CLONE_NO_LOCAL = 2;
    GIT_CLONE_LOCAL_NO_LINKS = 3;

type

  git_remote_create_cb = function (var out:Pgit_remote; var repo:git_repository; name:pcchar; url:pcchar; payload:pointer):cint;cdecl;

  git_repository_create_cb = function (var out:Pgit_repository; path:pcchar; bare:cint; payload:pointer):cint;cdecl;

  git_clone_options = record
      version : cuint;
      checkout_opts : git_checkout_options;
      fetch_opts : git_fetch_options;
      bare : cint;
      local : git_clone_local_t;
      checkout_branch : pcchar;
      repository_cb : git_repository_create_cb;
      repository_cb_payload : pointer;
      remote_cb : git_remote_create_cb;
      remote_cb_payload : pointer;
    end;

function git_clone_options_init(var opts:git_clone_options; version:cuint):cint;cdecl;external External_library name 'git_clone_options_init';
function git_clone(var out:Pgit_repository; url:pcchar; local_path:pcchar; var options:git_clone_options):cint;cdecl;external External_library name 'git_clone';
function git_commit_lookup(var commit:Pgit_commit; var repo:git_repository; var id:git_oid):cint;cdecl;external External_library name 'git_commit_lookup';
function git_commit_lookup_prefix(var commit:Pgit_commit; var repo:git_repository; var id:git_oid; len:size_t):cint;cdecl;external External_library name 'git_commit_lookup_prefix';
procedure git_commit_free(var commit:git_commit);cdecl;external External_library name 'git_commit_free';
function git_commit_id(var commit:git_commit):Pgit_oid;cdecl;external External_library name 'git_commit_id';
function git_commit_owner(var commit:git_commit):Pgit_repository;cdecl;external External_library name 'git_commit_owner';
function git_commit_message_encoding(var commit:git_commit):pcchar;cdecl;external External_library name 'git_commit_message_encoding';
function git_commit_message(var commit:git_commit):pcchar;cdecl;external External_library name 'git_commit_message';
function git_commit_message_raw(var commit:git_commit):pcchar;cdecl;external External_library name 'git_commit_message_raw';
function git_commit_summary(var commit:git_commit):pcchar;cdecl;external External_library name 'git_commit_summary';
function git_commit_body(var commit:git_commit):pcchar;cdecl;external External_library name 'git_commit_body';
function git_commit_time(var commit:git_commit):git_time_t;cdecl;external External_library name 'git_commit_time';
function git_commit_time_offset(var commit:git_commit):cint;cdecl;external External_library name 'git_commit_time_offset';
function git_commit_committer(var commit:git_commit):Pgit_signature;cdecl;external External_library name 'git_commit_committer';
function git_commit_author(var commit:git_commit):Pgit_signature;cdecl;external External_library name 'git_commit_author';
function git_commit_committer_with_mailmap(var out:Pgit_signature; var commit:git_commit; var mailmap:git_mailmap):cint;cdecl;external External_library name 'git_commit_committer_with_mailmap';
function git_commit_author_with_mailmap(var out:Pgit_signature; var commit:git_commit; var mailmap:git_mailmap):cint;cdecl;external External_library name 'git_commit_author_with_mailmap';
function git_commit_raw_header(var commit:git_commit):pcchar;cdecl;external External_library name 'git_commit_raw_header';
function git_commit_tree(var tree_out:Pgit_tree; var commit:git_commit):cint;cdecl;external External_library name 'git_commit_tree';
function git_commit_tree_id(var commit:git_commit):Pgit_oid;cdecl;external External_library name 'git_commit_tree_id';
function git_commit_parentcount(var commit:git_commit):cuint;cdecl;external External_library name 'git_commit_parentcount';
function git_commit_parent(var out:Pgit_commit; var commit:git_commit; n:cuint):cint;cdecl;external External_library name 'git_commit_parent';
function git_commit_parent_id(var commit:git_commit; n:cuint):Pgit_oid;cdecl;external External_library name 'git_commit_parent_id';
function git_commit_nth_gen_ancestor(var ancestor:Pgit_commit; var commit:git_commit; n:cuint):cint;cdecl;external External_library name 'git_commit_nth_gen_ancestor';
function git_commit_header_field(var out:git_buf; var commit:git_commit; field:pcchar):cint;cdecl;external External_library name 'git_commit_header_field';
function git_commit_extract_signature(var signature:git_buf; var signed_data:git_buf; var repo:git_repository; var commit_id:git_oid; field:pcchar):cint;cdecl;external External_library name 'git_commit_extract_signature';
function git_commit_create(var id:git_oid; var repo:git_repository; update_ref:pcchar; var author:git_signature; var committer:git_signature; 
           message_encoding:pcchar; message:pcchar; var tree:git_tree; parent_count:size_t; var parents:Pgit_commit):cint;cdecl;external External_library name 'git_commit_create';
function git_commit_create_v(var id:git_oid; var repo:git_repository; update_ref:pcchar; var author:git_signature; var committer:git_signature; 
           message_encoding:pcchar; message:pcchar; var tree:git_tree; parent_count:size_t; args:array of const):cint;cdecl;external External_library name 'git_commit_create_v';
function git_commit_create_v(var id:git_oid; var repo:git_repository; update_ref:pcchar; var author:git_signature; var committer:git_signature; 
           message_encoding:pcchar; message:pcchar; var tree:git_tree; parent_count:size_t):cint;cdecl;external External_library name 'git_commit_create_v';
function git_commit_amend(var id:git_oid; var commit_to_amend:git_commit; update_ref:pcchar; var author:git_signature; var committer:git_signature; 
           message_encoding:pcchar; message:pcchar; var tree:git_tree):cint;cdecl;external External_library name 'git_commit_amend';
function git_commit_create_buffer(var out:git_buf; var repo:git_repository; var author:git_signature; var committer:git_signature; message_encoding:pcchar; 
           message:pcchar; var tree:git_tree; parent_count:size_t; var parents:Pgit_commit):cint;cdecl;external External_library name 'git_commit_create_buffer';
function git_commit_create_with_signature(var out:git_oid; var repo:git_repository; commit_content:pcchar; signature:pcchar; signature_field:pcchar):cint;cdecl;external External_library name 'git_commit_create_with_signature';
function git_commit_dup(var out:Pgit_commit; var source:git_commit):cint;cdecl;external External_library name 'git_commit_dup';
type

  git_commit_signing_cb = function (var signature:git_buf; var signature_field:git_buf; commit_content:pcchar; payload:pointer):cint;cdecl;

  git_config_level_t =  Longint;
  Const
    GIT_CONFIG_LEVEL_PROGRAMDATA = 1;
    GIT_CONFIG_LEVEL_SYSTEM = 2;
    GIT_CONFIG_LEVEL_XDG = 3;
    GIT_CONFIG_LEVEL_GLOBAL = 4;
    GIT_CONFIG_LEVEL_LOCAL = 5;
    GIT_CONFIG_LEVEL_APP = 6;
    GIT_CONFIG_HIGHEST_LEVEL = -(1);

type
  git_config_entry = record
      name : pcchar;
      value : pcchar;
      include_depth : cuint;
      level : git_config_level_t;
      free : TProcedureVarEntryGit_config_entry;cdecl;
      payload : pointer;
    end;

procedure git_config_entry_free(_para1:Pgit_config_entry);cdecl;external External_library name 'git_config_entry_free';
type

  git_config_foreach_cb = function (var entry:git_config_entry; payload:pointer):cint;cdecl;

  git_configmap_t =  Longint;
  Const
    GIT_CONFIGMAP_FALSE = 0;
    GIT_CONFIGMAP_TRUE = 1;
    GIT_CONFIGMAP_INT32 = 2;
    GIT_CONFIGMAP_STRING = 3;

type
  git_configmap = record
      _type : git_configmap_t;
      str_match : pcchar;
      map_value : cint;
    end;

function git_config_find_global(var out:git_buf):cint;cdecl;external External_library name 'git_config_find_global';
function git_config_find_xdg(var out:git_buf):cint;cdecl;external External_library name 'git_config_find_xdg';
function git_config_find_system(var out:git_buf):cint;cdecl;external External_library name 'git_config_find_system';
function git_config_find_programdata(var out:git_buf):cint;cdecl;external External_library name 'git_config_find_programdata';
function git_config_open_default(var out:Pgit_config):cint;cdecl;external External_library name 'git_config_open_default';
function git_config_new(var out:Pgit_config):cint;cdecl;external External_library name 'git_config_new';
function git_config_add_file_ondisk(var cfg:git_config; path:pcchar; level:git_config_level_t; var repo:git_repository; force:cint):cint;cdecl;external External_library name 'git_config_add_file_ondisk';
function git_config_open_ondisk(var out:Pgit_config; path:pcchar):cint;cdecl;external External_library name 'git_config_open_ondisk';
function git_config_open_level(var out:Pgit_config; var parent:git_config; level:git_config_level_t):cint;cdecl;external External_library name 'git_config_open_level';
function git_config_open_global(var out:Pgit_config; var config:git_config):cint;cdecl;external External_library name 'git_config_open_global';
function git_config_snapshot(var out:Pgit_config; var config:git_config):cint;cdecl;external External_library name 'git_config_snapshot';
procedure git_config_free(var cfg:git_config);cdecl;external External_library name 'git_config_free';
function git_config_get_entry(var out:Pgit_config_entry; var cfg:git_config; name:pcchar):cint;cdecl;external External_library name 'git_config_get_entry';
function git_config_get_int32(var out:int32_t; var cfg:git_config; name:pcchar):cint;cdecl;external External_library name 'git_config_get_int32';
function git_config_get_int64(var out:int64_t; var cfg:git_config; name:pcchar):cint;cdecl;external External_library name 'git_config_get_int64';
function git_config_get_bool(var out:cint; var cfg:git_config; name:pcchar):cint;cdecl;external External_library name 'git_config_get_bool';
function git_config_get_path(var out:git_buf; var cfg:git_config; name:pcchar):cint;cdecl;external External_library name 'git_config_get_path';
function git_config_get_string(out:Ppcchar; var cfg:git_config; name:pcchar):cint;cdecl;external External_library name 'git_config_get_string';
function git_config_get_string_buf(var out:git_buf; var cfg:git_config; name:pcchar):cint;cdecl;external External_library name 'git_config_get_string_buf';
function git_config_get_multivar_foreach(var cfg:git_config; name:pcchar; regexp:pcchar; callback:git_config_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_config_get_multivar_foreach';
function git_config_multivar_iterator_new(var out:Pgit_config_iterator; var cfg:git_config; name:pcchar; regexp:pcchar):cint;cdecl;external External_library name 'git_config_multivar_iterator_new';
function git_config_next(var entry:Pgit_config_entry; var iter:git_config_iterator):cint;cdecl;external External_library name 'git_config_next';
procedure git_config_iterator_free(var iter:git_config_iterator);cdecl;external External_library name 'git_config_iterator_free';
function git_config_set_int32(var cfg:git_config; name:pcchar; value:int32_t):cint;cdecl;external External_library name 'git_config_set_int32';
function git_config_set_int64(var cfg:git_config; name:pcchar; value:int64_t):cint;cdecl;external External_library name 'git_config_set_int64';
function git_config_set_bool(var cfg:git_config; name:pcchar; value:cint):cint;cdecl;external External_library name 'git_config_set_bool';
function git_config_set_string(var cfg:git_config; name:pcchar; value:pcchar):cint;cdecl;external External_library name 'git_config_set_string';
function git_config_set_multivar(var cfg:git_config; name:pcchar; regexp:pcchar; value:pcchar):cint;cdecl;external External_library name 'git_config_set_multivar';
function git_config_delete_entry(var cfg:git_config; name:pcchar):cint;cdecl;external External_library name 'git_config_delete_entry';
function git_config_delete_multivar(var cfg:git_config; name:pcchar; regexp:pcchar):cint;cdecl;external External_library name 'git_config_delete_multivar';
function git_config_foreach(var cfg:git_config; callback:git_config_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_config_foreach';
function git_config_iterator_new(var out:Pgit_config_iterator; var cfg:git_config):cint;cdecl;external External_library name 'git_config_iterator_new';
function git_config_iterator_glob_new(var out:Pgit_config_iterator; var cfg:git_config; regexp:pcchar):cint;cdecl;external External_library name 'git_config_iterator_glob_new';
function git_config_foreach_match(var cfg:git_config; regexp:pcchar; callback:git_config_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_config_foreach_match';
function git_config_get_mapped(var out:cint; var cfg:git_config; name:pcchar; var maps:git_configmap; map_n:size_t):cint;cdecl;external External_library name 'git_config_get_mapped';
function git_config_lookup_map_value(var out:cint; var maps:git_configmap; map_n:size_t; value:pcchar):cint;cdecl;external External_library name 'git_config_lookup_map_value';
function git_config_parse_bool(var out:cint; value:pcchar):cint;cdecl;external External_library name 'git_config_parse_bool';
function git_config_parse_int32(var out:int32_t; value:pcchar):cint;cdecl;external External_library name 'git_config_parse_int32';
function git_config_parse_int64(var out:int64_t; value:pcchar):cint;cdecl;external External_library name 'git_config_parse_int64';
function git_config_parse_path(var out:git_buf; value:pcchar):cint;cdecl;external External_library name 'git_config_parse_path';
function git_config_backend_foreach_match(var backend:git_config_backend; regexp:pcchar; callback:git_config_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_config_backend_foreach_match';
function git_config_lock(var tx:Pgit_transaction; var cfg:git_config):cint;cdecl;external External_library name 'git_config_lock';
type
  git_describe_strategy_t =  Longint;
  Const
    GIT_DESCRIBE_DEFAULT = 0;
    GIT_DESCRIBE_TAGS = 1;
    GIT_DESCRIBE_ALL = 2;

type
  git_describe_options = record
      version : cuint;
      max_candidates_tags : cuint;
      describe_strategy : cuint;
      pattern : pcchar;
      only_follow_first_parent : cint;
      show_commit_oid_as_fallback : cint;
    end;

function git_describe_options_init(var opts:git_describe_options; version:cuint):cint;cdecl;external External_library name 'git_describe_options_init';
type
  git_describe_format_options = record
      version : cuint;
      abbreviated_size : cuint;
      always_use_long_format : cint;
      dirty_suffix : pcchar;
    end;

function git_describe_format_options_init(var opts:git_describe_format_options; version:cuint):cint;cdecl;external External_library name 'git_describe_format_options_init';


function git_describe_commit(var result:Pgit_describe_result; var committish:git_object; var opts:git_describe_options):cint;cdecl;external External_library name 'git_describe_commit';
function git_describe_workdir(var out:Pgit_describe_result; var repo:git_repository; var opts:git_describe_options):cint;cdecl;external External_library name 'git_describe_workdir';
function git_describe_format(var out:git_buf; var result:git_describe_result; var opts:git_describe_format_options):cint;cdecl;external External_library name 'git_describe_format';
procedure git_describe_result_free(var result:git_describe_result);cdecl;external External_library name 'git_describe_result_free';
type
  git_error_code =  Longint;
  Const
    GIT_OK = 0;
    GIT_ERROR = -(1);
    GIT_ENOTFOUND = -(3);
    GIT_EEXISTS = -(4);
    GIT_EAMBIGUOUS = -(5);
    GIT_EBUFS = -(6);
    GIT_EUSER = -(7);
    GIT_EBAREREPO = -(8);
    GIT_EUNBORNBRANCH = -(9);
    GIT_EUNMERGED = -(10);
    GIT_ENONFASTFORWARD = -(11);
    GIT_EINVALIDSPEC = -(12);
    GIT_ECONFLICT = -(13);
    GIT_ELOCKED = -(14);
    GIT_EMODIFIED = -(15);
    GIT_EAUTH = -(16);
    GIT_ECERTIFICATE = -(17);
    GIT_EAPPLIED = -(18);
    GIT_EPEEL = -(19);
    GIT_EEOF = -(20);
    GIT_EINVALID = -(21);
    GIT_EUNCOMMITTED = -(22);
    GIT_EDIRECTORY = -(23);
    GIT_EMERGECONFLICT = -(24);
    GIT_PASSTHROUGH = -(30);
    GIT_ITEROVER = -(31);
    GIT_RETRY = -(32);
    GIT_EMISMATCH = -(33);
    GIT_EINDEXDIRTY = -(34);
    GIT_EAPPLYFAIL = -(35);

type
  git_error = record
      message : pcchar;
      klass : cint;
    end;

  git_error_t =  Longint;
  Const
    GIT_ERROR_NONE = 0;
    GIT_ERROR_NOMEMORY = 1;
    GIT_ERROR_OS = 2;
    GIT_ERROR_INVALID = 3;
    GIT_ERROR_REFERENCE = 4;
    GIT_ERROR_ZLIB = 5;
    GIT_ERROR_REPOSITORY = 6;
    GIT_ERROR_CONFIG = 7;
    GIT_ERROR_REGEX = 8;
    GIT_ERROR_ODB = 9;
    GIT_ERROR_INDEX = 10;
    GIT_ERROR_OBJECT = 11;
    GIT_ERROR_NET = 12;
    GIT_ERROR_TAG = 13;
    GIT_ERROR_TREE = 14;
    GIT_ERROR_INDEXER = 15;
    GIT_ERROR_SSL = 16;
    GIT_ERROR_SUBMODULE = 17;
    GIT_ERROR_THREAD = 18;
    GIT_ERROR_STASH = 19;
    GIT_ERROR_CHECKOUT = 20;
    GIT_ERROR_FETCHHEAD = 21;
    GIT_ERROR_MERGE = 22;
    GIT_ERROR_SSH = 23;
    GIT_ERROR_FILTER = 24;
    GIT_ERROR_REVERT = 25;
    GIT_ERROR_CALLBACK = 26;
    GIT_ERROR_CHERRYPICK = 27;
    GIT_ERROR_DESCRIBE = 28;
    GIT_ERROR_REBASE = 29;
    GIT_ERROR_FILESYSTEM = 30;
    GIT_ERROR_PATCH = 31;
    GIT_ERROR_WORKTREE = 32;
    GIT_ERROR_SHA1 = 33;
    GIT_ERROR_HTTP = 34;
    GIT_ERROR_INTERNAL = 35;


function git_error_last:Pgit_error;cdecl;external External_library name 'git_error_last';
procedure git_error_clear;cdecl;external External_library name 'git_error_clear';
function git_error_set_str(error_class:cint; _string:pcchar):cint;cdecl;external External_library name 'git_error_set_str';
procedure git_error_set_oom;cdecl;external External_library name 'git_error_set_oom';
type
  git_filter_mode_t =  Longint;
  Const
    GIT_FILTER_TO_WORKTREE = 0;
    GIT_FILTER_SMUDGE = GIT_FILTER_TO_WORKTREE;
    GIT_FILTER_TO_ODB = 1;
    GIT_FILTER_CLEAN = GIT_FILTER_TO_ODB;

type
  git_filter_flag_t =  Longint;
  Const
    GIT_FILTER_DEFAULT = 0;
    GIT_FILTER_ALLOW_UNSAFE = 1 shl 0;
    GIT_FILTER_NO_SYSTEM_ATTRIBUTES = 1 shl 1;
    GIT_FILTER_ATTRIBUTES_FROM_HEAD = 1 shl 2;



function git_filter_list_load(var filters:Pgit_filter_list; var repo:git_repository; var blob:git_blob; path:pcchar; mode:git_filter_mode_t; 
           flags:uint32_t):cint;cdecl;external External_library name 'git_filter_list_load';
function git_filter_list_contains(var filters:git_filter_list; name:pcchar):cint;cdecl;external External_library name 'git_filter_list_contains';
function git_filter_list_apply_to_data(var out:git_buf; var filters:git_filter_list; var in:git_buf):cint;cdecl;external External_library name 'git_filter_list_apply_to_data';
function git_filter_list_apply_to_file(var out:git_buf; var filters:git_filter_list; var repo:git_repository; path:pcchar):cint;cdecl;external External_library name 'git_filter_list_apply_to_file';
function git_filter_list_apply_to_blob(var out:git_buf; var filters:git_filter_list; var blob:git_blob):cint;cdecl;external External_library name 'git_filter_list_apply_to_blob';
function git_filter_list_stream_data(var filters:git_filter_list; var data:git_buf; var target:git_writestream):cint;cdecl;external External_library name 'git_filter_list_stream_data';
function git_filter_list_stream_file(var filters:git_filter_list; var repo:git_repository; path:pcchar; var target:git_writestream):cint;cdecl;external External_library name 'git_filter_list_stream_file';
function git_filter_list_stream_blob(var filters:git_filter_list; var blob:git_blob; var target:git_writestream):cint;cdecl;external External_library name 'git_filter_list_stream_blob';
procedure git_filter_list_free(var filters:git_filter_list);cdecl;external External_library name 'git_filter_list_free';
function git_libgit2_init:cint;cdecl;external External_library name 'git_libgit2_init';
function git_libgit2_shutdown:cint;cdecl;external External_library name 'git_libgit2_shutdown';
function git_graph_ahead_behind(var ahead:size_t; var behind:size_t; var repo:git_repository; var local:git_oid; var upstream:git_oid):cint;cdecl;external External_library name 'git_graph_ahead_behind';
function git_graph_descendant_of(var repo:git_repository; var commit:git_oid; var ancestor:git_oid):cint;cdecl;external External_library name 'git_graph_descendant_of';
function git_ignore_add_rule(var repo:git_repository; rules:pcchar):cint;cdecl;external External_library name 'git_ignore_add_rule';
function git_ignore_clear_internal_rules(var repo:git_repository):cint;cdecl;external External_library name 'git_ignore_clear_internal_rules';
function git_ignore_path_is_ignored(var ignored:cint; var repo:git_repository; path:pcchar):cint;cdecl;external External_library name 'git_ignore_path_is_ignored';
function git_mailmap_new(var out:Pgit_mailmap):cint;cdecl;external External_library name 'git_mailmap_new';
procedure git_mailmap_free(var mm:git_mailmap);cdecl;external External_library name 'git_mailmap_free';
function git_mailmap_add_entry(var mm:git_mailmap; real_name:pcchar; real_email:pcchar; replace_name:pcchar; replace_email:pcchar):cint;cdecl;external External_library name 'git_mailmap_add_entry';
function git_mailmap_from_buffer(var out:Pgit_mailmap; buf:pcchar; len:size_t):cint;cdecl;external External_library name 'git_mailmap_from_buffer';
function git_mailmap_from_repository(var out:Pgit_mailmap; var repo:git_repository):cint;cdecl;external External_library name 'git_mailmap_from_repository';
function git_mailmap_resolve(real_name:Ppcchar; real_email:Ppcchar; var mm:git_mailmap; name:pcchar; email:pcchar):cint;cdecl;external External_library name 'git_mailmap_resolve';
function git_mailmap_resolve_signature(var out:Pgit_signature; var mm:git_mailmap; var sig:git_signature):cint;cdecl;external External_library name 'git_mailmap_resolve_signature';
function git_message_prettify(var out:git_buf; message:pcchar; strip_comments:cint; comment_char:cchar):cint;cdecl;external External_library name 'git_message_prettify';
type
  git_message_trailer = record
      key : pcchar;
      value : pcchar;
    end;

  git_message_trailer_array = record
      trailers : Pgit_message_trailer;
      count : size_t;
      _trailer_block : pcchar;
    end;

function git_message_trailers(var arr:git_message_trailer_array; message:pcchar):cint;cdecl;external External_library name 'git_message_trailers';
procedure git_message_trailer_array_free(var arr:git_message_trailer_array);cdecl;external External_library name 'git_message_trailer_array_free';
type

  git_note_foreach_cb = function (var blob_id:git_oid; var annotated_object_id:git_oid; payload:pointer):cint;cdecl;
  git_iterator = git_note_iterator;

function git_note_iterator_new(var out:Pgit_note_iterator; var repo:git_repository; notes_ref:pcchar):cint;cdecl;external External_library name 'git_note_iterator_new';
function git_note_commit_iterator_new(var out:Pgit_note_iterator; var notes_commit:git_commit):cint;cdecl;external External_library name 'git_note_commit_iterator_new';
procedure git_note_iterator_free(var it:git_note_iterator);cdecl;external External_library name 'git_note_iterator_free';
function git_note_next(var note_id:git_oid; var annotated_id:git_oid; var it:git_note_iterator):cint;cdecl;external External_library name 'git_note_next';
function git_note_read(var out:Pgit_note; var repo:git_repository; notes_ref:pcchar; var oid:git_oid):cint;cdecl;external External_library name 'git_note_read';
function git_note_commit_read(var out:Pgit_note; var repo:git_repository; var notes_commit:git_commit; var oid:git_oid):cint;cdecl;external External_library name 'git_note_commit_read';
function git_note_author(var note:git_note):Pgit_signature;cdecl;external External_library name 'git_note_author';
function git_note_committer(var note:git_note):Pgit_signature;cdecl;external External_library name 'git_note_committer';
function git_note_message(var note:git_note):pcchar;cdecl;external External_library name 'git_note_message';
function git_note_id(var note:git_note):Pgit_oid;cdecl;external External_library name 'git_note_id';
function git_note_create(var out:git_oid; var repo:git_repository; notes_ref:pcchar; var author:git_signature; var committer:git_signature; 
           var oid:git_oid; note:pcchar; force:cint):cint;cdecl;external External_library name 'git_note_create';
function git_note_commit_create(var notes_commit_out:git_oid; var notes_blob_out:git_oid; var repo:git_repository; var parent:git_commit; var author:git_signature; 
           var committer:git_signature; var oid:git_oid; note:pcchar; allow_note_overwrite:cint):cint;cdecl;external External_library name 'git_note_commit_create';
function git_note_remove(var repo:git_repository; notes_ref:pcchar; var author:git_signature; var committer:git_signature; var oid:git_oid):cint;cdecl;external External_library name 'git_note_remove';
function git_note_commit_remove(var notes_commit_out:git_oid; var repo:git_repository; var notes_commit:git_commit; var author:git_signature; var committer:git_signature; 
           var oid:git_oid):cint;cdecl;external External_library name 'git_note_commit_remove';
procedure git_note_free(var note:git_note);cdecl;external External_library name 'git_note_free';
function git_note_default_ref(var out:git_buf; var repo:git_repository):cint;cdecl;external External_library name 'git_note_default_ref';
function git_note_foreach(var repo:git_repository; notes_ref:pcchar; note_cb:git_note_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_note_foreach';
type

  git_odb_foreach_cb = function (var id:git_oid; payload:pointer):cint;cdecl;

function git_odb_new(var out:Pgit_odb):cint;cdecl;external External_library name 'git_odb_new';
function git_odb_open(var out:Pgit_odb; objects_dir:pcchar):cint;cdecl;external External_library name 'git_odb_open';
function git_odb_add_disk_alternate(var odb:git_odb; path:pcchar):cint;cdecl;external External_library name 'git_odb_add_disk_alternate';
procedure git_odb_free(var db:git_odb);cdecl;external External_library name 'git_odb_free';
function git_odb_read(var out:Pgit_odb_object; var db:git_odb; var id:git_oid):cint;cdecl;external External_library name 'git_odb_read';
function git_odb_read_prefix(var out:Pgit_odb_object; var db:git_odb; var short_id:git_oid; len:size_t):cint;cdecl;external External_library name 'git_odb_read_prefix';
function git_odb_read_header(var len_out:size_t; var type_out:git_object_t; var db:git_odb; var id:git_oid):cint;cdecl;external External_library name 'git_odb_read_header';
function git_odb_exists(var db:git_odb; var id:git_oid):cint;cdecl;external External_library name 'git_odb_exists';
function git_odb_exists_prefix(var out:git_oid; var db:git_odb; var short_id:git_oid; len:size_t):cint;cdecl;external External_library name 'git_odb_exists_prefix';
type
  git_odb_expand_id = record
      id : git_oid;
      length : cushort;
      _type : git_object_t;
    end;

function git_odb_expand_ids(var db:git_odb; var ids:git_odb_expand_id; count:size_t):cint;cdecl;external External_library name 'git_odb_expand_ids';
function git_odb_refresh(var db:git_odb):cint;cdecl;external External_library name 'git_odb_refresh';
function git_odb_foreach(var db:git_odb; cb:git_odb_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_odb_foreach';
function git_odb_write(var out:git_oid; var odb:git_odb; data:pointer; len:size_t; _type:git_object_t):cint;cdecl;external External_library name 'git_odb_write';
function git_odb_open_wstream(var out:Pgit_odb_stream; var db:git_odb; size:git_object_size_t; _type:git_object_t):cint;cdecl;external External_library name 'git_odb_open_wstream';
function git_odb_stream_write(var stream:git_odb_stream; buffer:pcchar; len:size_t):cint;cdecl;external External_library name 'git_odb_stream_write';
function git_odb_stream_finalize_write(var out:git_oid; var stream:git_odb_stream):cint;cdecl;external External_library name 'git_odb_stream_finalize_write';
function git_odb_stream_read(var stream:git_odb_stream; buffer:pcchar; len:size_t):cint;cdecl;external External_library name 'git_odb_stream_read';
procedure git_odb_stream_free(var stream:git_odb_stream);cdecl;external External_library name 'git_odb_stream_free';
function git_odb_open_rstream(var out:Pgit_odb_stream; var len:size_t; var _type:git_object_t; var db:git_odb; var oid:git_oid):cint;cdecl;external External_library name 'git_odb_open_rstream';
function git_odb_write_pack(var out:Pgit_odb_writepack; var db:git_odb; progress_cb:git_indexer_progress_cb; progress_payload:pointer):cint;cdecl;external External_library name 'git_odb_write_pack';
function git_odb_hash(var out:git_oid; data:pointer; len:size_t; _type:git_object_t):cint;cdecl;external External_library name 'git_odb_hash';
function git_odb_hashfile(var out:git_oid; path:pcchar; _type:git_object_t):cint;cdecl;external External_library name 'git_odb_hashfile';
function git_odb_object_dup(var dest:Pgit_odb_object; var source:git_odb_object):cint;cdecl;external External_library name 'git_odb_object_dup';
procedure git_odb_object_free(var object:git_odb_object);cdecl;external External_library name 'git_odb_object_free';
function git_odb_object_id(var object:git_odb_object):Pgit_oid;cdecl;external External_library name 'git_odb_object_id';
function git_odb_object_data(var object:git_odb_object):pointer;cdecl;external External_library name 'git_odb_object_data';
function git_odb_object_size(var object:git_odb_object):size_t;cdecl;external External_library name 'git_odb_object_size';
function git_odb_object_type(var object:git_odb_object):git_object_t;cdecl;external External_library name 'git_odb_object_type';
function git_odb_add_backend(var odb:git_odb; var backend:git_odb_backend; priority:cint):cint;cdecl;external External_library name 'git_odb_add_backend';
function git_odb_add_alternate(var odb:git_odb; var backend:git_odb_backend; priority:cint):cint;cdecl;external External_library name 'git_odb_add_alternate';
function git_odb_num_backends(var odb:git_odb):size_t;cdecl;external External_library name 'git_odb_num_backends';
function git_odb_get_backend(var out:Pgit_odb_backend; var odb:git_odb; pos:size_t):cint;cdecl;external External_library name 'git_odb_get_backend';
function git_odb_backend_pack(var out:Pgit_odb_backend; objects_dir:pcchar):cint;cdecl;external External_library name 'git_odb_backend_pack';
function git_odb_backend_loose(var out:Pgit_odb_backend; objects_dir:pcchar; compression_level:cint; do_fsync:cint; dir_mode:cuint; 
           file_mode:cuint):cint;cdecl;external External_library name 'git_odb_backend_loose';
function git_odb_backend_one_pack(var out:Pgit_odb_backend; index_file:pcchar):cint;cdecl;external External_library name 'git_odb_backend_one_pack';
type
  git_odb_stream_t =  Longint;
  Const
    GIT_STREAM_RDONLY = 1 shl 1;
    GIT_STREAM_WRONLY = 1 shl 2;
    GIT_STREAM_RW = GIT_STREAM_RDONLY or GIT_STREAM_WRONLY;

type
  git_odb_stream = record
      backend : Pgit_odb_backend;
      mode : cuint;
      hash_ctx : pointer;
      declared_size : git_object_size_t;
      received_bytes : git_object_size_t;
      read : TFunctionVarStreamGit_odb_streamBufferPccharLenSize_tCint;cdecl;
      write : TFunctionVarStreamGit_odb_streamBufferPccharLenSize_tCint;cdecl;
      finalize_write : TFunctionVarStreamGit_odb_streamVarOidGit_oidCint;cdecl;
      free : TProcedureVarStreamGit_odb_stream;cdecl;
    end;

  git_odb_writepack = record
      backend : Pgit_odb_backend;
      append : TFunctionVarWritepackGit_odb_writepackDataPointerSizeSize_tVarStatsGit_indexer_progressCint;cdecl;
      commit : TFunctionVarWritepackGit_odb_writepackVarStatsGit_indexer_progressCint;cdecl;
      free : TProcedureVarWritepackGit_odb_writepack;cdecl;
    end;


function git_patch_from_diff(var out:Pgit_patch; var diff:git_diff; idx:size_t):cint;cdecl;external External_library name 'git_patch_from_diff';
function git_patch_from_blobs(var out:Pgit_patch; var old_blob:git_blob; old_as_path:pcchar; var new_blob:git_blob; new_as_path:pcchar; 
           var opts:git_diff_options):cint;cdecl;external External_library name 'git_patch_from_blobs';
function git_patch_from_blob_and_buffer(var out:Pgit_patch; var old_blob:git_blob; old_as_path:pcchar; buffer:pointer; buffer_len:size_t; 
           buffer_as_path:pcchar; var opts:git_diff_options):cint;cdecl;external External_library name 'git_patch_from_blob_and_buffer';
function git_patch_from_buffers(var out:Pgit_patch; old_buffer:pointer; old_len:size_t; old_as_path:pcchar; new_buffer:pointer; 
           new_len:size_t; new_as_path:pcchar; var opts:git_diff_options):cint;cdecl;external External_library name 'git_patch_from_buffers';
procedure git_patch_free(var patch:git_patch);cdecl;external External_library name 'git_patch_free';
function git_patch_get_delta(var patch:git_patch):Pgit_diff_delta;cdecl;external External_library name 'git_patch_get_delta';
function git_patch_num_hunks(var patch:git_patch):size_t;cdecl;external External_library name 'git_patch_num_hunks';
function git_patch_line_stats(var total_context:size_t; var total_additions:size_t; var total_deletions:size_t; var patch:git_patch):cint;cdecl;external External_library name 'git_patch_line_stats';
function git_patch_get_hunk(var out:Pgit_diff_hunk; var lines_in_hunk:size_t; var patch:git_patch; hunk_idx:size_t):cint;cdecl;external External_library name 'git_patch_get_hunk';
function git_patch_num_lines_in_hunk(var patch:git_patch; hunk_idx:size_t):cint;cdecl;external External_library name 'git_patch_num_lines_in_hunk';
function git_patch_get_line_in_hunk(var out:Pgit_diff_line; var patch:git_patch; hunk_idx:size_t; line_of_hunk:size_t):cint;cdecl;external External_library name 'git_patch_get_line_in_hunk';
function git_patch_size(var patch:git_patch; include_context:cint; include_hunk_headers:cint; include_file_headers:cint):size_t;cdecl;external External_library name 'git_patch_size';
function git_patch_print(var patch:git_patch; print_cb:git_diff_line_cb; payload:pointer):cint;cdecl;external External_library name 'git_patch_print';
function git_patch_to_buf(var out:git_buf; var patch:git_patch):cint;cdecl;external External_library name 'git_patch_to_buf';
type

  git_pathspec_flag_t =  Longint;
  Const
    GIT_PATHSPEC_DEFAULT = 0;
    GIT_PATHSPEC_IGNORE_CASE = 1 shl 0;
    GIT_PATHSPEC_USE_CASE = 1 shl 1;
    GIT_PATHSPEC_NO_GLOB = 1 shl 2;
    GIT_PATHSPEC_NO_MATCH_ERROR = 1 shl 3;
    GIT_PATHSPEC_FIND_FAILURES = 1 shl 4;
    GIT_PATHSPEC_FAILURES_ONLY = 1 shl 5;


function git_pathspec_new(var out:Pgit_pathspec; var pathspec:git_strarray):cint;cdecl;external External_library name 'git_pathspec_new';
procedure git_pathspec_free(var ps:git_pathspec);cdecl;external External_library name 'git_pathspec_free';
function git_pathspec_matches_path(var ps:git_pathspec; flags:uint32_t; path:pcchar):cint;cdecl;external External_library name 'git_pathspec_matches_path';
function git_pathspec_match_workdir(var out:Pgit_pathspec_match_list; var repo:git_repository; flags:uint32_t; var ps:git_pathspec):cint;cdecl;external External_library name 'git_pathspec_match_workdir';
function git_pathspec_match_index(var out:Pgit_pathspec_match_list; var index:git_index; flags:uint32_t; var ps:git_pathspec):cint;cdecl;external External_library name 'git_pathspec_match_index';
function git_pathspec_match_tree(var out:Pgit_pathspec_match_list; var tree:git_tree; flags:uint32_t; var ps:git_pathspec):cint;cdecl;external External_library name 'git_pathspec_match_tree';
function git_pathspec_match_diff(var out:Pgit_pathspec_match_list; var diff:git_diff; flags:uint32_t; var ps:git_pathspec):cint;cdecl;external External_library name 'git_pathspec_match_diff';
procedure git_pathspec_match_list_free(var m:git_pathspec_match_list);cdecl;external External_library name 'git_pathspec_match_list_free';
function git_pathspec_match_list_entrycount(var m:git_pathspec_match_list):size_t;cdecl;external External_library name 'git_pathspec_match_list_entrycount';
function git_pathspec_match_list_entry(var m:git_pathspec_match_list; pos:size_t):pcchar;cdecl;external External_library name 'git_pathspec_match_list_entry';
function git_pathspec_match_list_diff_entry(var m:git_pathspec_match_list; pos:size_t):Pgit_diff_delta;cdecl;external External_library name 'git_pathspec_match_list_diff_entry';
function git_pathspec_match_list_failed_entrycount(var m:git_pathspec_match_list):size_t;cdecl;external External_library name 'git_pathspec_match_list_failed_entrycount';
function git_pathspec_match_list_failed_entry(var m:git_pathspec_match_list; pos:size_t):pcchar;cdecl;external External_library name 'git_pathspec_match_list_failed_entry';
type
  git_rebase_options = record
      version : cuint;
      quiet : cint;
      inmemory : cint;
      rewrite_notes_ref : pcchar;
      merge_options : git_merge_options;
      checkout_options : git_checkout_options;
      signing_cb : git_commit_signing_cb;
      payload : pointer;
    end;

  git_rebase_operation_t =  Longint;
  Const
    GIT_REBASE_OPERATION_PICK = 0;
    GIT_REBASE_OPERATION_REWORD = 1;
    GIT_REBASE_OPERATION_EDIT = 2;
    GIT_REBASE_OPERATION_SQUASH = 3;
    GIT_REBASE_OPERATION_FIXUP = 4;
    GIT_REBASE_OPERATION_EXEC = 5;

type
  git_rebase_operation = record
      _type : git_rebase_operation_t;
      id : git_oid;
      exec : pcchar;
    end;

function git_rebase_options_init(var opts:git_rebase_options; version:cuint):cint;cdecl;external External_library name 'git_rebase_options_init';
function git_rebase_init(var out:Pgit_rebase; var repo:git_repository; var branch:git_annotated_commit; var upstream:git_annotated_commit; var onto:git_annotated_commit; 
           var opts:git_rebase_options):cint;cdecl;external External_library name 'git_rebase_init';
function git_rebase_open(var out:Pgit_rebase; var repo:git_repository; var opts:git_rebase_options):cint;cdecl;external External_library name 'git_rebase_open';
function git_rebase_orig_head_name(var rebase:git_rebase):pcchar;cdecl;external External_library name 'git_rebase_orig_head_name';
function git_rebase_orig_head_id(var rebase:git_rebase):Pgit_oid;cdecl;external External_library name 'git_rebase_orig_head_id';
function git_rebase_onto_name(var rebase:git_rebase):pcchar;cdecl;external External_library name 'git_rebase_onto_name';
function git_rebase_onto_id(var rebase:git_rebase):Pgit_oid;cdecl;external External_library name 'git_rebase_onto_id';
function git_rebase_operation_entrycount(var rebase:git_rebase):size_t;cdecl;external External_library name 'git_rebase_operation_entrycount';
function git_rebase_operation_current(var rebase:git_rebase):size_t;cdecl;external External_library name 'git_rebase_operation_current';
function git_rebase_operation_byindex(var rebase:git_rebase; idx:size_t):Pgit_rebase_operation;cdecl;external External_library name 'git_rebase_operation_byindex';
function git_rebase_next(var operation:Pgit_rebase_operation; var rebase:git_rebase):cint;cdecl;external External_library name 'git_rebase_next';
function git_rebase_inmemory_index(var index:Pgit_index; var rebase:git_rebase):cint;cdecl;external External_library name 'git_rebase_inmemory_index';
function git_rebase_commit(var id:git_oid; var rebase:git_rebase; var author:git_signature; var committer:git_signature; message_encoding:pcchar; 
           message:pcchar):cint;cdecl;external External_library name 'git_rebase_commit';
function git_rebase_abort(var rebase:git_rebase):cint;cdecl;external External_library name 'git_rebase_abort';
function git_rebase_finish(var rebase:git_rebase; var signature:git_signature):cint;cdecl;external External_library name 'git_rebase_finish';
procedure git_rebase_free(var rebase:git_rebase);cdecl;external External_library name 'git_rebase_free';
function git_refdb_new(var out:Pgit_refdb; var repo:git_repository):cint;cdecl;external External_library name 'git_refdb_new';
function git_refdb_open(var out:Pgit_refdb; var repo:git_repository):cint;cdecl;external External_library name 'git_refdb_open';
function git_refdb_compress(var refdb:git_refdb):cint;cdecl;external External_library name 'git_refdb_compress';
procedure git_refdb_free(var refdb:git_refdb);cdecl;external External_library name 'git_refdb_free';
function git_reflog_read(var out:Pgit_reflog; var repo:git_repository; name:pcchar):cint;cdecl;external External_library name 'git_reflog_read';
function git_reflog_write(var reflog:git_reflog):cint;cdecl;external External_library name 'git_reflog_write';
function git_reflog_append(var reflog:git_reflog; var id:git_oid; var committer:git_signature; msg:pcchar):cint;cdecl;external External_library name 'git_reflog_append';
function git_reflog_rename(var repo:git_repository; old_name:pcchar; name:pcchar):cint;cdecl;external External_library name 'git_reflog_rename';
function git_reflog_delete(var repo:git_repository; name:pcchar):cint;cdecl;external External_library name 'git_reflog_delete';
function git_reflog_entrycount(var reflog:git_reflog):size_t;cdecl;external External_library name 'git_reflog_entrycount';
function git_reflog_entry_byindex(var reflog:git_reflog; idx:size_t):Pgit_reflog_entry;cdecl;external External_library name 'git_reflog_entry_byindex';
function git_reflog_drop(var reflog:git_reflog; idx:size_t; rewrite_previous_entry:cint):cint;cdecl;external External_library name 'git_reflog_drop';
function git_reflog_entry_id_old(var entry:git_reflog_entry):Pgit_oid;cdecl;external External_library name 'git_reflog_entry_id_old';
function git_reflog_entry_id_new(var entry:git_reflog_entry):Pgit_oid;cdecl;external External_library name 'git_reflog_entry_id_new';
function git_reflog_entry_committer(var entry:git_reflog_entry):Pgit_signature;cdecl;external External_library name 'git_reflog_entry_committer';
function git_reflog_entry_message(var entry:git_reflog_entry):pcchar;cdecl;external External_library name 'git_reflog_entry_message';
procedure git_reflog_free(var reflog:git_reflog);cdecl;external External_library name 'git_reflog_free';
type
  git_reset_t =  Longint;
  Const
    GIT_RESET_SOFT = 1;
    GIT_RESET_MIXED = 2;
    GIT_RESET_HARD = 3;


function git_reset(var repo:git_repository; var target:git_object; reset_type:git_reset_t; var checkout_opts:git_checkout_options):cint;cdecl;external External_library name 'git_reset';
function git_reset_from_annotated(var repo:git_repository; var commit:git_annotated_commit; reset_type:git_reset_t; var checkout_opts:git_checkout_options):cint;cdecl;external External_library name 'git_reset_from_annotated';
function git_reset_default(var repo:git_repository; var target:git_object; var pathspecs:git_strarray):cint;cdecl;external External_library name 'git_reset_default';
type
  git_revert_options = record
      version : cuint;
      mainline : cuint;
      merge_opts : git_merge_options;
      checkout_opts : git_checkout_options;
    end;

function git_revert_options_init(var opts:git_revert_options; version:cuint):cint;cdecl;external External_library name 'git_revert_options_init';
function git_revert_commit(var out:Pgit_index; var repo:git_repository; var revert_commit:git_commit; var our_commit:git_commit; mainline:cuint; 
           var merge_options:git_merge_options):cint;cdecl;external External_library name 'git_revert_commit';
function git_revert(var repo:git_repository; var commit:git_commit; var given_opts:git_revert_options):cint;cdecl;external External_library name 'git_revert';
function git_revparse_single(var out:Pgit_object; var repo:git_repository; spec:pcchar):cint;cdecl;external External_library name 'git_revparse_single';
function git_revparse_ext(var object_out:Pgit_object; var reference_out:Pgit_reference; var repo:git_repository; spec:pcchar):cint;cdecl;external External_library name 'git_revparse_ext';
type
  git_revparse_mode_t =  Longint;
  Const
    GIT_REVPARSE_SINGLE = 1 shl 0;
    GIT_REVPARSE_RANGE = 1 shl 1;
    GIT_REVPARSE_MERGE_BASE = 1 shl 2;

type
  git_revspec = record
      from : Pgit_object;
      to : Pgit_object;
      flags : cuint;
    end;

function git_revparse(var revspec:git_revspec; var repo:git_repository; spec:pcchar):cint;cdecl;external External_library name 'git_revparse';
type
  git_sort_t =  Longint;
  Const
    GIT_SORT_NONE = 0;
    GIT_SORT_TOPOLOGICAL = 1 shl 0;
    GIT_SORT_TIME = 1 shl 1;
    GIT_SORT_REVERSE = 1 shl 2;


function git_revwalk_new(var out:Pgit_revwalk; var repo:git_repository):cint;cdecl;external External_library name 'git_revwalk_new';
function git_revwalk_reset(var walker:git_revwalk):cint;cdecl;external External_library name 'git_revwalk_reset';
function git_revwalk_push(var walk:git_revwalk; var id:git_oid):cint;cdecl;external External_library name 'git_revwalk_push';
function git_revwalk_push_glob(var walk:git_revwalk; glob:pcchar):cint;cdecl;external External_library name 'git_revwalk_push_glob';
function git_revwalk_push_head(var walk:git_revwalk):cint;cdecl;external External_library name 'git_revwalk_push_head';
function git_revwalk_hide(var walk:git_revwalk; var commit_id:git_oid):cint;cdecl;external External_library name 'git_revwalk_hide';
function git_revwalk_hide_glob(var walk:git_revwalk; glob:pcchar):cint;cdecl;external External_library name 'git_revwalk_hide_glob';
function git_revwalk_hide_head(var walk:git_revwalk):cint;cdecl;external External_library name 'git_revwalk_hide_head';
function git_revwalk_push_ref(var walk:git_revwalk; refname:pcchar):cint;cdecl;external External_library name 'git_revwalk_push_ref';
function git_revwalk_hide_ref(var walk:git_revwalk; refname:pcchar):cint;cdecl;external External_library name 'git_revwalk_hide_ref';
function git_revwalk_next(var out:git_oid; var walk:git_revwalk):cint;cdecl;external External_library name 'git_revwalk_next';
function git_revwalk_sorting(var walk:git_revwalk; sort_mode:cuint):cint;cdecl;external External_library name 'git_revwalk_sorting';
function git_revwalk_push_range(var walk:git_revwalk; range:pcchar):cint;cdecl;external External_library name 'git_revwalk_push_range';
function git_revwalk_simplify_first_parent(var walk:git_revwalk):cint;cdecl;external External_library name 'git_revwalk_simplify_first_parent';
procedure git_revwalk_free(var walk:git_revwalk);cdecl;external External_library name 'git_revwalk_free';
function git_revwalk_repository(var walk:git_revwalk):Pgit_repository;cdecl;external External_library name 'git_revwalk_repository';
type

  git_revwalk_hide_cb = function (var commit_id:git_oid; payload:pointer):cint;cdecl;

function git_revwalk_add_hide_cb(var walk:git_revwalk; hide_cb:git_revwalk_hide_cb; payload:pointer):cint;cdecl;external External_library name 'git_revwalk_add_hide_cb';
function git_signature_new(var out:Pgit_signature; name:pcchar; email:pcchar; time:git_time_t; offset:cint):cint;cdecl;external External_library name 'git_signature_new';
function git_signature_now(var out:Pgit_signature; name:pcchar; email:pcchar):cint;cdecl;external External_library name 'git_signature_now';
function git_signature_default(var out:Pgit_signature; var repo:git_repository):cint;cdecl;external External_library name 'git_signature_default';
function git_signature_from_buffer(var out:Pgit_signature; buf:pcchar):cint;cdecl;external External_library name 'git_signature_from_buffer';
function git_signature_dup(var dest:Pgit_signature; var sig:git_signature):cint;cdecl;external External_library name 'git_signature_dup';
procedure git_signature_free(var sig:git_signature);cdecl;external External_library name 'git_signature_free';
type
  git_stash_flags =  Longint;
  Const
    GIT_STASH_DEFAULT = 0;
    GIT_STASH_KEEP_INDEX = 1 shl 0;
    GIT_STASH_INCLUDE_UNTRACKED = 1 shl 1;
    GIT_STASH_INCLUDE_IGNORED = 1 shl 2;


function git_stash_save(var out:git_oid; var repo:git_repository; var stasher:git_signature; message:pcchar; flags:uint32_t):cint;cdecl;external External_library name 'git_stash_save';
type
  git_stash_apply_flags =  Longint;
  Const
    GIT_STASH_APPLY_DEFAULT = 0;
    GIT_STASH_APPLY_REINSTATE_INDEX = 1 shl 0;

type
  git_stash_apply_progress_t =  Longint;
  Const
    GIT_STASH_APPLY_PROGRESS_NONE = 0;
    GIT_STASH_APPLY_PROGRESS_LOADING_STASH = 1;
    GIT_STASH_APPLY_PROGRESS_ANALYZE_INDEX = 2;
    GIT_STASH_APPLY_PROGRESS_ANALYZE_MODIFIED = 3;
    GIT_STASH_APPLY_PROGRESS_ANALYZE_UNTRACKED = 4;
    GIT_STASH_APPLY_PROGRESS_CHECKOUT_UNTRACKED = 5;
    GIT_STASH_APPLY_PROGRESS_CHECKOUT_MODIFIED = 6;
    GIT_STASH_APPLY_PROGRESS_DONE = 7;

type

  git_stash_apply_progress_cb = function (progress:git_stash_apply_progress_t; payload:pointer):cint;cdecl;

  git_stash_apply_options = record
      version : cuint;
      flags : uint32_t;
      checkout_options : git_checkout_options;
      progress_cb : git_stash_apply_progress_cb;
      progress_payload : pointer;
    end;

function git_stash_apply_options_init(var opts:git_stash_apply_options; version:cuint):cint;cdecl;external External_library name 'git_stash_apply_options_init';
function git_stash_apply(var repo:git_repository; index:size_t; var options:git_stash_apply_options):cint;cdecl;external External_library name 'git_stash_apply';
type

  git_stash_cb = function (index:size_t; message:pcchar; var stash_id:git_oid; payload:pointer):cint;cdecl;

function git_stash_foreach(var repo:git_repository; callback:git_stash_cb; payload:pointer):cint;cdecl;external External_library name 'git_stash_foreach';
function git_stash_drop(var repo:git_repository; index:size_t):cint;cdecl;external External_library name 'git_stash_drop';
function git_stash_pop(var repo:git_repository; index:size_t; var options:git_stash_apply_options):cint;cdecl;external External_library name 'git_stash_pop';
type
  git_status_t =  Longint;
  Const
    GIT_STATUS_CURRENT = 0;
    GIT_STATUS_INDEX_NEW = 1 shl 0;
    GIT_STATUS_INDEX_MODIFIED = 1 shl 1;
    GIT_STATUS_INDEX_DELETED = 1 shl 2;
    GIT_STATUS_INDEX_RENAMED = 1 shl 3;
    GIT_STATUS_INDEX_TYPECHANGE = 1 shl 4;
    GIT_STATUS_WT_NEW = 1 shl 7;
    GIT_STATUS_WT_MODIFIED = 1 shl 8;
    GIT_STATUS_WT_DELETED = 1 shl 9;
    GIT_STATUS_WT_TYPECHANGE = 1 shl 10;
    GIT_STATUS_WT_RENAMED = 1 shl 11;
    GIT_STATUS_WT_UNREADABLE = 1 shl 12;
    GIT_STATUS_IGNORED = 1 shl 14;
    GIT_STATUS_CONFLICTED = 1 shl 15;

type

  git_status_cb = function (path:pcchar; status_flags:cuint; payload:pointer):cint;cdecl;

  git_status_show_t =  Longint;
  Const
    GIT_STATUS_SHOW_INDEX_AND_WORKDIR = 0;
    GIT_STATUS_SHOW_INDEX_ONLY = 1;
    GIT_STATUS_SHOW_WORKDIR_ONLY = 2;

type
  git_status_opt_t =  Longint;
  Const
    GIT_STATUS_OPT_INCLUDE_UNTRACKED = 1 shl 0;
    GIT_STATUS_OPT_INCLUDE_IGNORED = 1 shl 1;
    GIT_STATUS_OPT_INCLUDE_UNMODIFIED = 1 shl 2;
    GIT_STATUS_OPT_EXCLUDE_SUBMODULES = 1 shl 3;
    GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS = 1 shl 4;
    GIT_STATUS_OPT_DISABLE_PATHSPEC_MATCH = 1 shl 5;
    GIT_STATUS_OPT_RECURSE_IGNORED_DIRS = 1 shl 6;
    GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX = 1 shl 7;
    GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR = 1 shl 8;
    GIT_STATUS_OPT_SORT_CASE_SENSITIVELY = 1 shl 9;
    GIT_STATUS_OPT_SORT_CASE_INSENSITIVELY = 1 shl 10;
    GIT_STATUS_OPT_RENAMES_FROM_REWRITES = 1 shl 11;
    GIT_STATUS_OPT_NO_REFRESH = 1 shl 12;
    GIT_STATUS_OPT_UPDATE_INDEX = 1 shl 13;
    GIT_STATUS_OPT_INCLUDE_UNREADABLE = 1 shl 14;
    GIT_STATUS_OPT_INCLUDE_UNREADABLE_AS_UNTRACKED = 1 shl 15;

type
  git_status_options = record
      version : cuint;
      show : git_status_show_t;
      flags : cuint;
      pathspec : git_strarray;
      baseline : Pgit_tree;
    end;

function git_status_options_init(var opts:git_status_options; version:cuint):cint;cdecl;external External_library name 'git_status_options_init';
type
  git_status_entry = record
      status : git_status_t;
      head_to_index : Pgit_diff_delta;
      index_to_workdir : Pgit_diff_delta;
    end;

function git_status_foreach(var repo:git_repository; callback:git_status_cb; payload:pointer):cint;cdecl;external External_library name 'git_status_foreach';
function git_status_foreach_ext(var repo:git_repository; var opts:git_status_options; callback:git_status_cb; payload:pointer):cint;cdecl;external External_library name 'git_status_foreach_ext';
function git_status_file(var status_flags:cuint; var repo:git_repository; path:pcchar):cint;cdecl;external External_library name 'git_status_file';
function git_status_list_new(var out:Pgit_status_list; var repo:git_repository; var opts:git_status_options):cint;cdecl;external External_library name 'git_status_list_new';
function git_status_list_entrycount(var statuslist:git_status_list):size_t;cdecl;external External_library name 'git_status_list_entrycount';
function git_status_byindex(var statuslist:git_status_list; idx:size_t):Pgit_status_entry;cdecl;external External_library name 'git_status_byindex';
procedure git_status_list_free(var statuslist:git_status_list);cdecl;external External_library name 'git_status_list_free';
function git_status_should_ignore(var ignored:cint; var repo:git_repository; path:pcchar):cint;cdecl;external External_library name 'git_status_should_ignore';
type
  git_submodule_status_t =  Longint;
  Const
    GIT_SUBMODULE_STATUS_IN_HEAD = 1 shl 0;
    GIT_SUBMODULE_STATUS_IN_INDEX = 1 shl 1;
    GIT_SUBMODULE_STATUS_IN_CONFIG = 1 shl 2;
    GIT_SUBMODULE_STATUS_IN_WD = 1 shl 3;
    GIT_SUBMODULE_STATUS_INDEX_ADDED = 1 shl 4;
    GIT_SUBMODULE_STATUS_INDEX_DELETED = 1 shl 5;
    GIT_SUBMODULE_STATUS_INDEX_MODIFIED = 1 shl 6;
    GIT_SUBMODULE_STATUS_WD_UNINITIALIZED = 1 shl 7;
    GIT_SUBMODULE_STATUS_WD_ADDED = 1 shl 8;
    GIT_SUBMODULE_STATUS_WD_DELETED = 1 shl 9;
    GIT_SUBMODULE_STATUS_WD_MODIFIED = 1 shl 10;
    GIT_SUBMODULE_STATUS_WD_INDEX_MODIFIED = 1 shl 11;
    GIT_SUBMODULE_STATUS_WD_WD_MODIFIED = 1 shl 12;
    GIT_SUBMODULE_STATUS_WD_UNTRACKED = 1 shl 13;

type

  git_submodule_cb = function (var sm:git_submodule; name:pcchar; payload:pointer):cint;cdecl;

  git_submodule_update_options = record
      version : cuint;
      checkout_opts : git_checkout_options;
      fetch_opts : git_fetch_options;
      allow_fetch : cint;
    end;

function git_submodule_update_options_init(var opts:git_submodule_update_options; version:cuint):cint;cdecl;external External_library name 'git_submodule_update_options_init';
function git_submodule_update(var submodule:git_submodule; init:cint; var options:git_submodule_update_options):cint;cdecl;external External_library name 'git_submodule_update';
function git_submodule_lookup(var out:Pgit_submodule; var repo:git_repository; name:pcchar):cint;cdecl;external External_library name 'git_submodule_lookup';
procedure git_submodule_free(var submodule:git_submodule);cdecl;external External_library name 'git_submodule_free';
function git_submodule_foreach(var repo:git_repository; callback:git_submodule_cb; payload:pointer):cint;cdecl;external External_library name 'git_submodule_foreach';
function git_submodule_add_setup(var out:Pgit_submodule; var repo:git_repository; url:pcchar; path:pcchar; use_gitlink:cint):cint;cdecl;external External_library name 'git_submodule_add_setup';
function git_submodule_clone(var out:Pgit_repository; var submodule:git_submodule; var opts:git_submodule_update_options):cint;cdecl;external External_library name 'git_submodule_clone';
function git_submodule_add_finalize(var submodule:git_submodule):cint;cdecl;external External_library name 'git_submodule_add_finalize';
function git_submodule_add_to_index(var submodule:git_submodule; write_index:cint):cint;cdecl;external External_library name 'git_submodule_add_to_index';
function git_submodule_owner(var submodule:git_submodule):Pgit_repository;cdecl;external External_library name 'git_submodule_owner';
function git_submodule_name(var submodule:git_submodule):pcchar;cdecl;external External_library name 'git_submodule_name';
function git_submodule_path(var submodule:git_submodule):pcchar;cdecl;external External_library name 'git_submodule_path';
function git_submodule_url(var submodule:git_submodule):pcchar;cdecl;external External_library name 'git_submodule_url';
function git_submodule_resolve_url(var out:git_buf; var repo:git_repository; url:pcchar):cint;cdecl;external External_library name 'git_submodule_resolve_url';
function git_submodule_branch(var submodule:git_submodule):pcchar;cdecl;external External_library name 'git_submodule_branch';
function git_submodule_set_branch(var repo:git_repository; name:pcchar; branch:pcchar):cint;cdecl;external External_library name 'git_submodule_set_branch';
function git_submodule_set_url(var repo:git_repository; name:pcchar; url:pcchar):cint;cdecl;external External_library name 'git_submodule_set_url';
function git_submodule_index_id(var submodule:git_submodule):Pgit_oid;cdecl;external External_library name 'git_submodule_index_id';
function git_submodule_head_id(var submodule:git_submodule):Pgit_oid;cdecl;external External_library name 'git_submodule_head_id';
function git_submodule_wd_id(var submodule:git_submodule):Pgit_oid;cdecl;external External_library name 'git_submodule_wd_id';
function git_submodule_ignore(var submodule:git_submodule):git_submodule_ignore_t;cdecl;external External_library name 'git_submodule_ignore';
function git_submodule_set_ignore(var repo:git_repository; name:pcchar; ignore:git_submodule_ignore_t):cint;cdecl;external External_library name 'git_submodule_set_ignore';
function git_submodule_update_strategy(var submodule:git_submodule):git_submodule_update_t;cdecl;external External_library name 'git_submodule_update_strategy';
function git_submodule_set_update(var repo:git_repository; name:pcchar; update:git_submodule_update_t):cint;cdecl;external External_library name 'git_submodule_set_update';
function git_submodule_fetch_recurse_submodules(var submodule:git_submodule):git_submodule_recurse_t;cdecl;external External_library name 'git_submodule_fetch_recurse_submodules';
function git_submodule_set_fetch_recurse_submodules(var repo:git_repository; name:pcchar; fetch_recurse_submodules:git_submodule_recurse_t):cint;cdecl;external External_library name 'git_submodule_set_fetch_recurse_submodules';
function git_submodule_init(var submodule:git_submodule; overwrite:cint):cint;cdecl;external External_library name 'git_submodule_init';
function git_submodule_repo_init(var out:Pgit_repository; var sm:git_submodule; use_gitlink:cint):cint;cdecl;external External_library name 'git_submodule_repo_init';
function git_submodule_sync(var submodule:git_submodule):cint;cdecl;external External_library name 'git_submodule_sync';
function git_submodule_open(var repo:Pgit_repository; var submodule:git_submodule):cint;cdecl;external External_library name 'git_submodule_open';
function git_submodule_reload(var submodule:git_submodule; force:cint):cint;cdecl;external External_library name 'git_submodule_reload';
function git_submodule_status(var status:cuint; var repo:git_repository; name:pcchar; ignore:git_submodule_ignore_t):cint;cdecl;external External_library name 'git_submodule_status';
function git_submodule_location(var location_status:cuint; var submodule:git_submodule):cint;cdecl;external External_library name 'git_submodule_location';
function git_tag_lookup(var out:Pgit_tag; var repo:git_repository; var id:git_oid):cint;cdecl;external External_library name 'git_tag_lookup';
function git_tag_lookup_prefix(var out:Pgit_tag; var repo:git_repository; var id:git_oid; len:size_t):cint;cdecl;external External_library name 'git_tag_lookup_prefix';
procedure git_tag_free(var tag:git_tag);cdecl;external External_library name 'git_tag_free';
function git_tag_id(var tag:git_tag):Pgit_oid;cdecl;external External_library name 'git_tag_id';
function git_tag_owner(var tag:git_tag):Pgit_repository;cdecl;external External_library name 'git_tag_owner';
function git_tag_target(var target_out:Pgit_object; var tag:git_tag):cint;cdecl;external External_library name 'git_tag_target';
function git_tag_target_id(var tag:git_tag):Pgit_oid;cdecl;external External_library name 'git_tag_target_id';
function git_tag_target_type(var tag:git_tag):git_object_t;cdecl;external External_library name 'git_tag_target_type';
function git_tag_name(var tag:git_tag):pcchar;cdecl;external External_library name 'git_tag_name';
function git_tag_tagger(var tag:git_tag):Pgit_signature;cdecl;external External_library name 'git_tag_tagger';
function git_tag_message(var tag:git_tag):pcchar;cdecl;external External_library name 'git_tag_message';
function git_tag_create(var oid:git_oid; var repo:git_repository; tag_name:pcchar; var target:git_object; var tagger:git_signature; 
           message:pcchar; force:cint):cint;cdecl;external External_library name 'git_tag_create';
function git_tag_annotation_create(var oid:git_oid; var repo:git_repository; tag_name:pcchar; var target:git_object; var tagger:git_signature; 
           message:pcchar):cint;cdecl;external External_library name 'git_tag_annotation_create';
function git_tag_create_from_buffer(var oid:git_oid; var repo:git_repository; buffer:pcchar; force:cint):cint;cdecl;external External_library name 'git_tag_create_from_buffer';
function git_tag_create_lightweight(var oid:git_oid; var repo:git_repository; tag_name:pcchar; var target:git_object; force:cint):cint;cdecl;external External_library name 'git_tag_create_lightweight';
function git_tag_delete(var repo:git_repository; tag_name:pcchar):cint;cdecl;external External_library name 'git_tag_delete';
function git_tag_list(var tag_names:git_strarray; var repo:git_repository):cint;cdecl;external External_library name 'git_tag_list';
function git_tag_list_match(var tag_names:git_strarray; pattern:pcchar; var repo:git_repository):cint;cdecl;external External_library name 'git_tag_list_match';
type

  git_tag_foreach_cb = function (name:pcchar; var oid:git_oid; payload:pointer):cint;cdecl;

function git_tag_foreach(var repo:git_repository; callback:git_tag_foreach_cb; payload:pointer):cint;cdecl;external External_library name 'git_tag_foreach';
function git_tag_peel(var tag_target_out:Pgit_object; var tag:git_tag):cint;cdecl;external External_library name 'git_tag_peel';
function git_tag_dup(var out:Pgit_tag; var source:git_tag):cint;cdecl;external External_library name 'git_tag_dup';
function git_transaction_new(var out:Pgit_transaction; var repo:git_repository):cint;cdecl;external External_library name 'git_transaction_new';
function git_transaction_lock_ref(var tx:git_transaction; refname:pcchar):cint;cdecl;external External_library name 'git_transaction_lock_ref';
function git_transaction_set_target(var tx:git_transaction; refname:pcchar; var target:git_oid; var sig:git_signature; msg:pcchar):cint;cdecl;external External_library name 'git_transaction_set_target';
function git_transaction_set_symbolic_target(var tx:git_transaction; refname:pcchar; target:pcchar; var sig:git_signature; msg:pcchar):cint;cdecl;external External_library name 'git_transaction_set_symbolic_target';
function git_transaction_set_reflog(var tx:git_transaction; refname:pcchar; var reflog:git_reflog):cint;cdecl;external External_library name 'git_transaction_set_reflog';
function git_transaction_remove(var tx:git_transaction; refname:pcchar):cint;cdecl;external External_library name 'git_transaction_remove';
function git_transaction_commit(var tx:git_transaction):cint;cdecl;external External_library name 'git_transaction_commit';
procedure git_transaction_free(var tx:git_transaction);cdecl;external External_library name 'git_transaction_free';
function git_worktree_list(var out:git_strarray; var repo:git_repository):cint;cdecl;external External_library name 'git_worktree_list';
function git_worktree_lookup(var out:Pgit_worktree; var repo:git_repository; name:pcchar):cint;cdecl;external External_library name 'git_worktree_lookup';
function git_worktree_open_from_repository(var out:Pgit_worktree; var repo:git_repository):cint;cdecl;external External_library name 'git_worktree_open_from_repository';
procedure git_worktree_free(var wt:git_worktree);cdecl;external External_library name 'git_worktree_free';
function git_worktree_validate(var wt:git_worktree):cint;cdecl;external External_library name 'git_worktree_validate';
type
  git_worktree_add_options = record
      version : cuint;
      lock : cint;
      ref : Pgit_reference;
    end;

function git_worktree_add_options_init(var opts:git_worktree_add_options; version:cuint):cint;cdecl;external External_library name 'git_worktree_add_options_init';
function git_worktree_add(var out:Pgit_worktree; var repo:git_repository; name:pcchar; path:pcchar; var opts:git_worktree_add_options):cint;cdecl;external External_library name 'git_worktree_add';
function git_worktree_lock(var wt:git_worktree; reason:pcchar):cint;cdecl;external External_library name 'git_worktree_lock';
function git_worktree_unlock(var wt:git_worktree):cint;cdecl;external External_library name 'git_worktree_unlock';
function git_worktree_is_locked(var reason:git_buf; var wt:git_worktree):cint;cdecl;external External_library name 'git_worktree_is_locked';
function git_worktree_name(var wt:git_worktree):pcchar;cdecl;external External_library name 'git_worktree_name';
function git_worktree_path(var wt:git_worktree):pcchar;cdecl;external External_library name 'git_worktree_path';
type
  git_worktree_prune_t =  Longint;
  Const
    GIT_WORKTREE_PRUNE_VALID = 1 shl 0;
    GIT_WORKTREE_PRUNE_LOCKED = 1 shl 1;
    GIT_WORKTREE_PRUNE_WORKING_TREE = 1 shl 2;

type
  git_worktree_prune_options = record
      version : cuint;
      flags : uint32_t;
    end;

function git_worktree_prune_options_init(var opts:git_worktree_prune_options; version:cuint):cint;cdecl;external External_library name 'git_worktree_prune_options_init';
function git_worktree_is_prunable(var wt:git_worktree; var opts:git_worktree_prune_options):cint;cdecl;external External_library name 'git_worktree_is_prunable';
function git_worktree_prune(var wt:git_worktree; var opts:git_worktree_prune_options):cint;cdecl;external External_library name 'git_worktree_prune';

implementation


end.
