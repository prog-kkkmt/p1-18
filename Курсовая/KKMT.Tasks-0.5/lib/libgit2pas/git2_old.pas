
unit git2;
interface

uses
  ctypes;



type
  TProcedureSigPointerPayloadPointer = procedure (sig:pointer; payload:pointer);


type
  TFunctionVarStreamTgit_odb_streamBufferPccharLenTsize_tTcint = function (var stream:Tgit_odb_stream; buffer:pcchar; len:size_t): cint;
type
  TFunctionVarScoreTcintSigaPointerSigbPointerPayloadPointerTcint = function (var score:cint; siga:pointer; sigb:pointer; payload:pointer):cint;
type
  TArray0to31OfTcuchar = array[0..31] of Tcuchar;
type
  TArray0to19OfTcuchar = array[0..19] of Tcuchar;
type
  TArray0to15OfTcuchar = array[0..15] of Tcuchar;
type
  TArray0to127OfTcchar = array[0..127] of Tcchar;

{
  Automatically converted by H2Pas 1.0.0 from /media/lanode/Хранилище/Development/KkmtTesting/libgit2/h2pas/git2_pp.tmp.h
  The following command line parameters were used:
    -e
    -c
    -p
    -s
    -S
    -t
    -T
    -d
    -D
    -w
    -C
    -l
    libgit2
    -o
    /media/lanode/Хранилище/Development/KkmtTesting/libgit2/h2pas/git2_pp.pas
    /media/lanode/Хранилище/Development/KkmtTesting/libgit2/h2pas/git2_pp.tmp.h
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



function git_libgit2_version(var major:Tcint; var minor:Tcint; var rev:Tcint):Tcint;cdecl;external External_library name 'git_libgit2_version';
type
  Pgit_feature_t = ^Tgit_feature_t;
  Tgit_feature_t =  Longint;
  Const
    GIT_FEATURE_THREADS = 1 shl 0;
    GIT_FEATURE_HTTPS = 1 shl 1;
    GIT_FEATURE_SSH = 1 shl 2;
    GIT_FEATURE_NSEC = 1 shl 3;


function git_libgit2_features:Tcint;cdecl;external External_library name 'git_libgit2_features';
type
  Pgit_libgit2_opt_t = ^Tgit_libgit2_opt_t;
  Tgit_libgit2_opt_t =  Longint;
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


function git_libgit2_opts(option:Tcint; args:array of const):Tcint;cdecl;external External_library name 'git_libgit2_opts';
function git_libgit2_opts(option:Tcint):Tcint;cdecl;external External_library name 'git_libgit2_opts';
type
  Pgit_off_t = ^Tgit_off_t;
  Tgit_off_t = Tint64_t;

  Pgit_time_t = ^Tgit_time_t;
  Tgit_time_t = Tint64_t;

  Pgit_object_size_t = ^Tgit_object_size_t;
  Tgit_object_size_t = Tuint64_t;

  Pgit_buf = ^Tgit_buf;
  Tgit_buf = record
      ptr : pcchar;
      asize : Tsize_t;
      size : Tsize_t;
    end;

procedure git_buf_dispose(var buffer:Tgit_buf);cdecl;external External_library name 'git_buf_dispose';
function git_buf_grow(var buffer:Tgit_buf; target_size:Tsize_t):Tcint;cdecl;external External_library name 'git_buf_grow';
function git_buf_set(var buffer:Tgit_buf; data:pointer; datalen:Tsize_t):Tcint;cdecl;external External_library name 'git_buf_set';
function git_buf_is_binary(var buf:Tgit_buf):Tcint;cdecl;external External_library name 'git_buf_is_binary';
function git_buf_contains_nul(var buf:Tgit_buf):Tcint;cdecl;external External_library name 'git_buf_contains_nul';
type
  Pgit_oid = ^Tgit_oid;
  Tgit_oid = record
      id : TArray0to19OfTcuchar;
    end;
  TFunctionRefnamePccharVarATgit_oidVarBTgit_oidDataPointerTcint = function (refname:pcchar; var a:Tgit_oid; var b:Tgit_oid; data:pointer):Tcint;
  TFunctionVarStreamTgit_odb_streamVarOidTgit_oidTcint = function (var stream:Tgit_odb_stream; var oid:Tgit_oid):Tcint;

function git_oid_fromstr(var out:Tgit_oid; str:pcchar):Tcint;cdecl;external External_library name 'git_oid_fromstr';
function git_oid_fromstrp(var out:Tgit_oid; str:pcchar):Tcint;cdecl;external External_library name 'git_oid_fromstrp';
function git_oid_fromstrn(var out:Tgit_oid; str:pcchar; length:Tsize_t):Tcint;cdecl;external External_library name 'git_oid_fromstrn';
function git_oid_fromraw(var out:Tgit_oid; raw:pcuchar):Tcint;cdecl;external External_library name 'git_oid_fromraw';
function git_oid_fmt(out:pcchar; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_oid_fmt';
function git_oid_nfmt(out:pcchar; n:Tsize_t; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_oid_nfmt';
function git_oid_pathfmt(out:pcchar; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_oid_pathfmt';
function git_oid_tostr_s(var oid:Tgit_oid):pcchar;cdecl;external External_library name 'git_oid_tostr_s';
function git_oid_tostr(out:pcchar; n:Tsize_t; var id:Tgit_oid):pcchar;cdecl;external External_library name 'git_oid_tostr';
function git_oid_cpy(var out:Tgit_oid; var src:Tgit_oid):Tcint;cdecl;external External_library name 'git_oid_cpy';
function git_oid_cmp(var a:Tgit_oid; var b:Tgit_oid):Tcint;cdecl;external External_library name 'git_oid_cmp';
function git_oid_equal(var a:Tgit_oid; var b:Tgit_oid):Tcint;cdecl;external External_library name 'git_oid_equal';
function git_oid_ncmp(var a:Tgit_oid; var b:Tgit_oid; len:Tsize_t):Tcint;cdecl;external External_library name 'git_oid_ncmp';
function git_oid_streq(var id:Tgit_oid; str:pcchar):Tcint;cdecl;external External_library name 'git_oid_streq';
function git_oid_strcmp(var id:Tgit_oid; str:pcchar):Tcint;cdecl;external External_library name 'git_oid_strcmp';
function git_oid_is_zero(var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_oid_is_zero';


function git_oid_shorten_new(min_length:Tsize_t):Pgit_oid_shorten;cdecl;external External_library name 'git_oid_shorten_new';
function git_oid_shorten_add(var os:Tgit_oid_shorten; text_id:pcchar):Tcint;cdecl;external External_library name 'git_oid_shorten_add';
procedure git_oid_shorten_free(var os:Tgit_oid_shorten);cdecl;external External_library name 'git_oid_shorten_free';
type
  Pgit_object_t = ^Tgit_object_t;
  Tgit_object_t =  Longint;
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

  Pgit_time = ^Tgit_time;
  Tgit_time = record
      time : Tgit_time_t;
      offset : Tcint;
      sign : Tcchar;
    end;

  Pgit_signature = ^Tgit_signature;
  Tgit_signature = record
      name : pcchar;
      email : pcchar;
      when : Tgit_time;
    end;

  Pgit_reference_t = ^Tgit_reference_t;
  Tgit_reference_t =  Longint;
  Const
    GIT_REFERENCE_INVALID = 0;
    GIT_REFERENCE_DIRECT = 1;
    GIT_REFERENCE_SYMBOLIC = 2;
    GIT_REFERENCE_ALL = GIT_REFERENCE_DIRECT or GIT_REFERENCE_SYMBOLIC;

type
  Pgit_branch_t = ^Tgit_branch_t;
  Tgit_branch_t =  Longint;
  Const
    GIT_BRANCH_LOCAL = 1;
    GIT_BRANCH_REMOTE = 2;
    GIT_BRANCH_ALL = GIT_BRANCH_LOCAL or GIT_BRANCH_REMOTE;

type
  Pgit_filemode_t = ^Tgit_filemode_t;
  Tgit_filemode_t =  Longint;
  Const
    GIT_FILEMODE_UNREADABLE = 0000000;
    GIT_FILEMODE_TREE = 0040000;
    GIT_FILEMODE_BLOB = 0100644;
    GIT_FILEMODE_BLOB_EXECUTABLE = 0100755;
    GIT_FILEMODE_LINK = 0120000;
    GIT_FILEMODE_COMMIT = 0160000;

type

  Pgit_submodule_update_t = ^Tgit_submodule_update_t;
  Tgit_submodule_update_t =  Longint;
  Const
    GIT_SUBMODULE_UPDATE_CHECKOUT = 1;
    GIT_SUBMODULE_UPDATE_REBASE = 2;
    GIT_SUBMODULE_UPDATE_MERGE = 3;
    GIT_SUBMODULE_UPDATE_NONE = 4;
    GIT_SUBMODULE_UPDATE_DEFAULT = 0;

type
  Pgit_submodule_ignore_t = ^Tgit_submodule_ignore_t;
  Tgit_submodule_ignore_t =  Longint;
  Const
    GIT_SUBMODULE_IGNORE_UNSPECIFIED = -(1);
    GIT_SUBMODULE_IGNORE_NONE = 1;
    GIT_SUBMODULE_IGNORE_UNTRACKED = 2;
    GIT_SUBMODULE_IGNORE_DIRTY = 3;
    GIT_SUBMODULE_IGNORE_ALL = 4;

type
  Pgit_submodule_recurse_t = ^Tgit_submodule_recurse_t;
  Tgit_submodule_recurse_t =  Longint;
  Const
    GIT_SUBMODULE_RECURSE_NO = 0;
    GIT_SUBMODULE_RECURSE_YES = 1;
    GIT_SUBMODULE_RECURSE_ONDEMAND = 2;

type
  Pgit_writestream = ^Tgit_writestream;
  Tgit_writestream = record
      write : TFunctionVarStreamTgit_writestreamBufferPccharLenTsize_tTcint;cdecl;
      close : TFunctionVarStreamTgit_writestreamTcint;cdecl;
      free : TProcedureVarStreamTgit_writestream;cdecl;
    end;
type
  TProcedureVarStreamTgit_writestream = procedure (var stream:Tgit_writestream);
type
  TFunctionVarStreamTgit_writestreamTcint = function (var stream:Tgit_writestream):Tcint;
type
  TFunctionVarStreamTgit_writestreamBufferPccharLenTsize_tTcint = function (var stream:Tgit_writestream; buffer:pcchar; len:Tsize_t):Tcint;


function git_repository_open(var out:Pgit_repository; path:pcchar):Tcint;cdecl;external External_library name 'git_repository_open';
function git_repository_open_from_worktree(var out:Pgit_repository; var wt:Tgit_worktree):Tcint;cdecl;external External_library name 'git_repository_open_from_worktree';
function git_repository_wrap_odb(var out:Pgit_repository; var odb:Tgit_odb):Tcint;cdecl;external External_library name 'git_repository_wrap_odb';
function git_repository_discover(var out:Tgit_buf; start_path:pcchar; across_fs:Tcint; ceiling_dirs:pcchar):Tcint;cdecl;external External_library name 'git_repository_discover';
type
  Pgit_repository_open_flag_t = ^Tgit_repository_open_flag_t;
  Tgit_repository_open_flag_t =  Longint;
  Const
    GIT_REPOSITORY_OPEN_NO_SEARCH = 1 shl 0;
    GIT_REPOSITORY_OPEN_CROSS_FS = 1 shl 1;
    GIT_REPOSITORY_OPEN_BARE = 1 shl 2;
    GIT_REPOSITORY_OPEN_NO_DOTGIT = 1 shl 3;
    GIT_REPOSITORY_OPEN_FROM_ENV = 1 shl 4;


function git_repository_open_ext(var out:Pgit_repository; path:pcchar; flags:Tcuint; ceiling_dirs:pcchar):Tcint;cdecl;external External_library name 'git_repository_open_ext';
function git_repository_open_bare(var out:Pgit_repository; bare_path:pcchar):Tcint;cdecl;external External_library name 'git_repository_open_bare';
procedure git_repository_free(var repo:Tgit_repository);cdecl;external External_library name 'git_repository_free';
function git_repository_init(var out:Pgit_repository; path:pcchar; is_bare:Tcunsigned):Tcint;cdecl;external External_library name 'git_repository_init';
type
  Pgit_repository_init_flag_t = ^Tgit_repository_init_flag_t;
  Tgit_repository_init_flag_t =  Longint;
  Const
    GIT_REPOSITORY_INIT_BARE = 1 shl 0;
    GIT_REPOSITORY_INIT_NO_REINIT = 1 shl 1;
    GIT_REPOSITORY_INIT_NO_DOTGIT_DIR = 1 shl 2;
    GIT_REPOSITORY_INIT_MKDIR = 1 shl 3;
    GIT_REPOSITORY_INIT_MKPATH = 1 shl 4;
    GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE = 1 shl 5;
    GIT_REPOSITORY_INIT_RELATIVE_GITLINK = 1 shl 6;

type
  Pgit_repository_init_mode_t = ^Tgit_repository_init_mode_t;
  Tgit_repository_init_mode_t =  Longint;
  Const
    GIT_REPOSITORY_INIT_SHARED_UMASK = 0;
    GIT_REPOSITORY_INIT_SHARED_GROUP = 0002775;
    GIT_REPOSITORY_INIT_SHARED_ALL = 0002777;

type
  Pgit_repository_init_options = ^Tgit_repository_init_options;
  Tgit_repository_init_options = record
      version : Tcuint;
      flags : Tuint32_t;
      mode : Tuint32_t;
      workdir_path : pcchar;
      description : pcchar;
      template_path : pcchar;
      initial_head : pcchar;
      origin_url : pcchar;
    end;

function git_repository_init_options_init(var opts:Tgit_repository_init_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_repository_init_options_init';
function git_repository_init_ext(var out:Pgit_repository; repo_path:pcchar; var opts:Tgit_repository_init_options):Tcint;cdecl;external External_library name 'git_repository_init_ext';
function git_repository_head(var out:Pgit_reference; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_head';
function git_repository_head_for_worktree(var out:Pgit_reference; var repo:Tgit_repository; name:pcchar):Tcint;cdecl;external External_library name 'git_repository_head_for_worktree';
function git_repository_head_detached(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_head_detached';
function git_repository_head_detached_for_worktree(var repo:Tgit_repository; name:pcchar):Tcint;cdecl;external External_library name 'git_repository_head_detached_for_worktree';
function git_repository_head_unborn(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_head_unborn';
function git_repository_is_empty(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_is_empty';
type
  Pgit_repository_item_t = ^Tgit_repository_item_t;
  Tgit_repository_item_t =  Longint;
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


function git_repository_item_path(var out:Tgit_buf; var repo:Tgit_repository; item:Tgit_repository_item_t):Tcint;cdecl;external External_library name 'git_repository_item_path';
function git_repository_path(var repo:Tgit_repository):pcchar;cdecl;external External_library name 'git_repository_path';
function git_repository_workdir(var repo:Tgit_repository):pcchar;cdecl;external External_library name 'git_repository_workdir';
function git_repository_commondir(var repo:Tgit_repository):pcchar;cdecl;external External_library name 'git_repository_commondir';
function git_repository_set_workdir(var repo:Tgit_repository; workdir:pcchar; update_gitlink:Tcint):Tcint;cdecl;external External_library name 'git_repository_set_workdir';
function git_repository_is_bare(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_is_bare';
function git_repository_is_worktree(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_is_worktree';
function git_repository_config(var out:Pgit_config; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_config';
function git_repository_config_snapshot(var out:Pgit_config; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_config_snapshot';
function git_repository_odb(var out:Pgit_odb; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_odb';
function git_repository_refdb(var out:Pgit_refdb; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_refdb';
function git_repository_index(var out:Pgit_index; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_index';
function git_repository_message(var out:Tgit_buf; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_message';
function git_repository_message_remove(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_message_remove';
function git_repository_state_cleanup(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_state_cleanup';
type

  Tgit_repository_fetchhead_foreach_cb = function (ref_name:pcchar; remote_url:pcchar; var oid:Tgit_oid; is_merge:Tcuint; payload:pointer):Tcint;cdecl;

function git_repository_fetchhead_foreach(var repo:Tgit_repository; callback:Tgit_repository_fetchhead_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_repository_fetchhead_foreach';
type

  Tgit_repository_mergehead_foreach_cb = function (var oid:Tgit_oid; payload:pointer):Tcint;cdecl;

function git_repository_mergehead_foreach(var repo:Tgit_repository; callback:Tgit_repository_mergehead_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_repository_mergehead_foreach';
function git_repository_hashfile(var out:Tgit_oid; var repo:Tgit_repository; path:pcchar; _type:Tgit_object_t; as_path:pcchar):Tcint;cdecl;external External_library name 'git_repository_hashfile';
function git_repository_set_head(var repo:Tgit_repository; refname:pcchar):Tcint;cdecl;external External_library name 'git_repository_set_head';
function git_repository_set_head_detached(var repo:Tgit_repository; var commitish:Tgit_oid):Tcint;cdecl;external External_library name 'git_repository_set_head_detached';
function git_repository_set_head_detached_from_annotated(var repo:Tgit_repository; var commitish:Tgit_annotated_commit):Tcint;cdecl;external External_library name 'git_repository_set_head_detached_from_annotated';
function git_repository_detach_head(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_detach_head';
type
  Pgit_repository_state_t = ^Tgit_repository_state_t;
  Tgit_repository_state_t =  Longint;
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


function git_repository_state(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_state';
function git_repository_set_namespace(var repo:Tgit_repository; nmspace:pcchar):Tcint;cdecl;external External_library name 'git_repository_set_namespace';
function git_repository_get_namespace(var repo:Tgit_repository):pcchar;cdecl;external External_library name 'git_repository_get_namespace';
function git_repository_is_shallow(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_is_shallow';
function git_repository_ident(name:Ppcchar; email:Ppcchar; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_ident';
function git_repository_set_ident(var repo:Tgit_repository; name:pcchar; email:pcchar):Tcint;cdecl;external External_library name 'git_repository_set_ident';
function git_annotated_commit_from_ref(var out:Pgit_annotated_commit; var repo:Tgit_repository; var ref:Tgit_reference):Tcint;cdecl;external External_library name 'git_annotated_commit_from_ref';
function git_annotated_commit_from_fetchhead(var out:Pgit_annotated_commit; var repo:Tgit_repository; branch_name:pcchar; remote_url:pcchar; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_annotated_commit_from_fetchhead';
function git_annotated_commit_lookup(var out:Pgit_annotated_commit; var repo:Tgit_repository; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_annotated_commit_lookup';
function git_annotated_commit_from_revspec(var out:Pgit_annotated_commit; var repo:Tgit_repository; revspec:pcchar):Tcint;cdecl;external External_library name 'git_annotated_commit_from_revspec';
function git_annotated_commit_id(var commit:Tgit_annotated_commit):Pgit_oid;cdecl;external External_library name 'git_annotated_commit_id';
function git_annotated_commit_ref(var commit:Tgit_annotated_commit):pcchar;cdecl;external External_library name 'git_annotated_commit_ref';
procedure git_annotated_commit_free(var commit:Tgit_annotated_commit);cdecl;external External_library name 'git_annotated_commit_free';
function git_object_lookup(var object:Pgit_object; var repo:Tgit_repository; var id:Tgit_oid; _type:Tgit_object_t):Tcint;cdecl;external External_library name 'git_object_lookup';
function git_object_lookup_prefix(var object_out:Pgit_object; var repo:Tgit_repository; var id:Tgit_oid; len:Tsize_t; _type:Tgit_object_t):Tcint;cdecl;external External_library name 'git_object_lookup_prefix';
function git_object_lookup_bypath(var out:Pgit_object; var treeish:Tgit_object; path:pcchar; _type:Tgit_object_t):Tcint;cdecl;external External_library name 'git_object_lookup_bypath';
function git_object_id(var obj:Tgit_object):Pgit_oid;cdecl;external External_library name 'git_object_id';
function git_object_short_id(var out:Tgit_buf; var obj:Tgit_object):Tcint;cdecl;external External_library name 'git_object_short_id';
function git_object_type(var obj:Tgit_object):Tgit_object_t;cdecl;external External_library name 'git_object_type';
function git_object_owner(var obj:Tgit_object):Pgit_repository;cdecl;external External_library name 'git_object_owner';
procedure git_object_free(var object:Tgit_object);cdecl;external External_library name 'git_object_free';
function git_object_type2string(_type:Tgit_object_t):pcchar;cdecl;external External_library name 'git_object_type2string';
function git_object_string2type(str:pcchar):Tgit_object_t;cdecl;external External_library name 'git_object_string2type';
function git_object_typeisloose(_type:Tgit_object_t):Tcint;cdecl;external External_library name 'git_object_typeisloose';
function git_object_peel(var peeled:Pgit_object; var object:Tgit_object; target_type:Tgit_object_t):Tcint;cdecl;external External_library name 'git_object_peel';
function git_object_dup(var dest:Pgit_object; var source:Tgit_object):Tcint;cdecl;external External_library name 'git_object_dup';
function git_tree_lookup(var out:Pgit_tree; var repo:Tgit_repository; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_tree_lookup';
function git_tree_lookup_prefix(var out:Pgit_tree; var repo:Tgit_repository; var id:Tgit_oid; len:Tsize_t):Tcint;cdecl;external External_library name 'git_tree_lookup_prefix';
procedure git_tree_free(var tree:Tgit_tree);cdecl;external External_library name 'git_tree_free';
function git_tree_id(var tree:Tgit_tree):Pgit_oid;cdecl;external External_library name 'git_tree_id';
function git_tree_owner(var tree:Tgit_tree):Pgit_repository;cdecl;external External_library name 'git_tree_owner';
function git_tree_entrycount(var tree:Tgit_tree):Tsize_t;cdecl;external External_library name 'git_tree_entrycount';
function git_tree_entry_byname(var tree:Tgit_tree; filename:pcchar):Pgit_tree_entry;cdecl;external External_library name 'git_tree_entry_byname';
function git_tree_entry_byindex(var tree:Tgit_tree; idx:Tsize_t):Pgit_tree_entry;cdecl;external External_library name 'git_tree_entry_byindex';
function git_tree_entry_byid(var tree:Tgit_tree; var id:Tgit_oid):Pgit_tree_entry;cdecl;external External_library name 'git_tree_entry_byid';
function git_tree_entry_bypath(var out:Pgit_tree_entry; var root:Tgit_tree; path:pcchar):Tcint;cdecl;external External_library name 'git_tree_entry_bypath';
function git_tree_entry_dup(var dest:Pgit_tree_entry; var source:Tgit_tree_entry):Tcint;cdecl;external External_library name 'git_tree_entry_dup';
procedure git_tree_entry_free(var entry:Tgit_tree_entry);cdecl;external External_library name 'git_tree_entry_free';
function git_tree_entry_name(var entry:Tgit_tree_entry):pcchar;cdecl;external External_library name 'git_tree_entry_name';
function git_tree_entry_id(var entry:Tgit_tree_entry):Pgit_oid;cdecl;external External_library name 'git_tree_entry_id';
function git_tree_entry_type(var entry:Tgit_tree_entry):Tgit_object_t;cdecl;external External_library name 'git_tree_entry_type';
function git_tree_entry_filemode(var entry:Tgit_tree_entry):Tgit_filemode_t;cdecl;external External_library name 'git_tree_entry_filemode';
function git_tree_entry_filemode_raw(var entry:Tgit_tree_entry):Tgit_filemode_t;cdecl;external External_library name 'git_tree_entry_filemode_raw';
function git_tree_entry_cmp(var e1:Tgit_tree_entry; var e2:Tgit_tree_entry):Tcint;cdecl;external External_library name 'git_tree_entry_cmp';
function git_tree_entry_to_object(var object_out:Pgit_object; var repo:Tgit_repository; var entry:Tgit_tree_entry):Tcint;cdecl;external External_library name 'git_tree_entry_to_object';
function git_treebuilder_new(var out:Pgit_treebuilder; var repo:Tgit_repository; var source:Tgit_tree):Tcint;cdecl;external External_library name 'git_treebuilder_new';
function git_treebuilder_clear(var bld:Tgit_treebuilder):Tcint;cdecl;external External_library name 'git_treebuilder_clear';
function git_treebuilder_entrycount(var bld:Tgit_treebuilder):Tsize_t;cdecl;external External_library name 'git_treebuilder_entrycount';
procedure git_treebuilder_free(var bld:Tgit_treebuilder);cdecl;external External_library name 'git_treebuilder_free';
function git_treebuilder_get(var bld:Tgit_treebuilder; filename:pcchar):Pgit_tree_entry;cdecl;external External_library name 'git_treebuilder_get';
function git_treebuilder_insert(var out:Pgit_tree_entry; var bld:Tgit_treebuilder; filename:pcchar; var id:Tgit_oid; filemode:Tgit_filemode_t):Tcint;cdecl;external External_library name 'git_treebuilder_insert';
function git_treebuilder_remove(var bld:Tgit_treebuilder; filename:pcchar):Tcint;cdecl;external External_library name 'git_treebuilder_remove';
type

  Tgit_treebuilder_filter_cb = function (var entry:Tgit_tree_entry; payload:pointer):Tcint;cdecl;

function git_treebuilder_filter(var bld:Tgit_treebuilder; filter:Tgit_treebuilder_filter_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_treebuilder_filter';
function git_treebuilder_write(var id:Tgit_oid; var bld:Tgit_treebuilder):Tcint;cdecl;external External_library name 'git_treebuilder_write';
function git_treebuilder_write_with_buffer(var oid:Tgit_oid; var bld:Tgit_treebuilder; var tree:Tgit_buf):Tcint;cdecl;external External_library name 'git_treebuilder_write_with_buffer';
type

  Tgit_treewalk_cb = function (root:pcchar; var entry:Tgit_tree_entry; payload:pointer):Tcint;cdecl;

  Pgit_treewalk_mode = ^Tgit_treewalk_mode;
  Tgit_treewalk_mode =  Longint;
  Const
    GIT_TREEWALK_PRE = 0;
    GIT_TREEWALK_POST = 1;


function git_tree_walk(var tree:Tgit_tree; mode:Tgit_treewalk_mode; callback:Tgit_treewalk_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_tree_walk';
function git_tree_dup(var out:Pgit_tree; var source:Tgit_tree):Tcint;cdecl;external External_library name 'git_tree_dup';
type
  Pgit_tree_update_t = ^Tgit_tree_update_t;
  Tgit_tree_update_t =  Longint;
  Const
    GIT_TREE_UPDATE_UPSERT = 0;
    GIT_TREE_UPDATE_REMOVE = 1;

type
  Pgit_tree_update = ^Tgit_tree_update;
  Tgit_tree_update = record
      action : Tgit_tree_update_t;
      id : Tgit_oid;
      filemode : Tgit_filemode_t;
      path : pcchar;
    end;

function git_tree_create_updated(var out:Tgit_oid; var repo:Tgit_repository; var baseline:Tgit_tree; nupdates:Tsize_t; var updates:Tgit_tree_update):Tcint;cdecl;external External_library name 'git_tree_create_updated';
type
  Pgit_strarray = ^Tgit_strarray;
  Tgit_strarray = record
      strings : ^pcchar;
      count : Tsize_t;
    end;

procedure git_strarray_dispose(var array:Tgit_strarray);cdecl;external External_library name 'git_strarray_dispose';
function git_strarray_copy(var tgt:Tgit_strarray; var src:Tgit_strarray):Tcint;cdecl;external External_library name 'git_strarray_copy';
function git_reference_lookup(var out:Pgit_reference; var repo:Tgit_repository; name:pcchar):Tcint;cdecl;external External_library name 'git_reference_lookup';
function git_reference_name_to_id(var out:Tgit_oid; var repo:Tgit_repository; name:pcchar):Tcint;cdecl;external External_library name 'git_reference_name_to_id';
function git_reference_dwim(var out:Pgit_reference; var repo:Tgit_repository; shorthand:pcchar):Tcint;cdecl;external External_library name 'git_reference_dwim';
function git_reference_symbolic_create_matching(var out:Pgit_reference; var repo:Tgit_repository; name:pcchar; target:pcchar; force:Tcint; 
           current_value:pcchar; log_message:pcchar):Tcint;cdecl;external External_library name 'git_reference_symbolic_create_matching';
function git_reference_symbolic_create(var out:Pgit_reference; var repo:Tgit_repository; name:pcchar; target:pcchar; force:Tcint; 
           log_message:pcchar):Tcint;cdecl;external External_library name 'git_reference_symbolic_create';
function git_reference_create(var out:Pgit_reference; var repo:Tgit_repository; name:pcchar; var id:Tgit_oid; force:Tcint; 
           log_message:pcchar):Tcint;cdecl;external External_library name 'git_reference_create';
function git_reference_create_matching(var out:Pgit_reference; var repo:Tgit_repository; name:pcchar; var id:Tgit_oid; force:Tcint; 
           var current_id:Tgit_oid; log_message:pcchar):Tcint;cdecl;external External_library name 'git_reference_create_matching';
function git_reference_target(var ref:Tgit_reference):Pgit_oid;cdecl;external External_library name 'git_reference_target';
function git_reference_target_peel(var ref:Tgit_reference):Pgit_oid;cdecl;external External_library name 'git_reference_target_peel';
function git_reference_symbolic_target(var ref:Tgit_reference):pcchar;cdecl;external External_library name 'git_reference_symbolic_target';
function git_reference_type(var ref:Tgit_reference):Tgit_reference_t;cdecl;external External_library name 'git_reference_type';
function git_reference_name(var ref:Tgit_reference):pcchar;cdecl;external External_library name 'git_reference_name';
function git_reference_resolve(var out:Pgit_reference; var ref:Tgit_reference):Tcint;cdecl;external External_library name 'git_reference_resolve';
function git_reference_owner(var ref:Tgit_reference):Pgit_repository;cdecl;external External_library name 'git_reference_owner';
function git_reference_symbolic_set_target(var out:Pgit_reference; var ref:Tgit_reference; target:pcchar; log_message:pcchar):Tcint;cdecl;external External_library name 'git_reference_symbolic_set_target';
function git_reference_set_target(var out:Pgit_reference; var ref:Tgit_reference; var id:Tgit_oid; log_message:pcchar):Tcint;cdecl;external External_library name 'git_reference_set_target';
function git_reference_rename(var new_ref:Pgit_reference; var ref:Tgit_reference; new_name:pcchar; force:Tcint; log_message:pcchar):Tcint;cdecl;external External_library name 'git_reference_rename';
function git_reference_delete(var ref:Tgit_reference):Tcint;cdecl;external External_library name 'git_reference_delete';
function git_reference_remove(var repo:Tgit_repository; name:pcchar):Tcint;cdecl;external External_library name 'git_reference_remove';
function git_reference_list(var array:Tgit_strarray; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_reference_list';
type

  Tgit_reference_foreach_cb = function (var reference:Tgit_reference; payload:pointer):Tcint;cdecl;

  Tgit_reference_foreach_name_cb = function (name:pcchar; payload:pointer):Tcint;cdecl;

function git_reference_foreach(var repo:Tgit_repository; callback:Tgit_reference_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_reference_foreach';
function git_reference_foreach_name(var repo:Tgit_repository; callback:Tgit_reference_foreach_name_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_reference_foreach_name';
function git_reference_dup(var dest:Pgit_reference; var source:Tgit_reference):Tcint;cdecl;external External_library name 'git_reference_dup';
procedure git_reference_free(var ref:Tgit_reference);cdecl;external External_library name 'git_reference_free';
function git_reference_cmp(var ref1:Tgit_reference; var ref2:Tgit_reference):Tcint;cdecl;external External_library name 'git_reference_cmp';
function git_reference_iterator_new(var out:Pgit_reference_iterator; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_reference_iterator_new';
function git_reference_iterator_glob_new(var out:Pgit_reference_iterator; var repo:Tgit_repository; glob:pcchar):Tcint;cdecl;external External_library name 'git_reference_iterator_glob_new';
function git_reference_next(var out:Pgit_reference; var iter:Tgit_reference_iterator):Tcint;cdecl;external External_library name 'git_reference_next';
function git_reference_next_name(out:Ppcchar; var iter:Tgit_reference_iterator):Tcint;cdecl;external External_library name 'git_reference_next_name';
procedure git_reference_iterator_free(var iter:Tgit_reference_iterator);cdecl;external External_library name 'git_reference_iterator_free';
function git_reference_foreach_glob(var repo:Tgit_repository; glob:pcchar; callback:Tgit_reference_foreach_name_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_reference_foreach_glob';
function git_reference_has_log(var repo:Tgit_repository; refname:pcchar):Tcint;cdecl;external External_library name 'git_reference_has_log';
function git_reference_ensure_log(var repo:Tgit_repository; refname:pcchar):Tcint;cdecl;external External_library name 'git_reference_ensure_log';
function git_reference_is_branch(var ref:Tgit_reference):Tcint;cdecl;external External_library name 'git_reference_is_branch';
function git_reference_is_remote(var ref:Tgit_reference):Tcint;cdecl;external External_library name 'git_reference_is_remote';
function git_reference_is_tag(var ref:Tgit_reference):Tcint;cdecl;external External_library name 'git_reference_is_tag';
function git_reference_is_note(var ref:Tgit_reference):Tcint;cdecl;external External_library name 'git_reference_is_note';
type
  Pgit_reference_format_t = ^Tgit_reference_format_t;
  Tgit_reference_format_t =  Longint;
  Const
    GIT_REFERENCE_FORMAT_NORMAL = 0;
    GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL = 1 shl 0;
    GIT_REFERENCE_FORMAT_REFSPEC_PATTERN = 1 shl 1;
    GIT_REFERENCE_FORMAT_REFSPEC_SHORTHAND = 1 shl 2;


function git_reference_normalize_name(buffer_out:pcchar; buffer_size:Tsize_t; name:pcchar; flags:Tcuint):Tcint;cdecl;external External_library name 'git_reference_normalize_name';
function git_reference_peel(var out:Pgit_object; var ref:Tgit_reference; _type:Tgit_object_t):Tcint;cdecl;external External_library name 'git_reference_peel';
function git_reference_is_valid_name(refname:pcchar):Tcint;cdecl;external External_library name 'git_reference_is_valid_name';
function git_reference_shorthand(var ref:Tgit_reference):pcchar;cdecl;external External_library name 'git_reference_shorthand';
type
  Pgit_diff_option_t = ^Tgit_diff_option_t;
  Tgit_diff_option_t =  Longint;
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

  Pgit_diff_flag_t = ^Tgit_diff_flag_t;
  Tgit_diff_flag_t =  Longint;
  Const
    GIT_DIFF_FLAG_BINARY = 1 shl 0;
    GIT_DIFF_FLAG_NOT_BINARY = 1 shl 1;
    GIT_DIFF_FLAG_VALID_ID = 1 shl 2;
    GIT_DIFF_FLAG_EXISTS = 1 shl 3;

type
  Pgit_delta_t = ^Tgit_delta_t;
  Tgit_delta_t =  Longint;
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
  Pgit_diff_file = ^Tgit_diff_file;
  Tgit_diff_file = record
      id : Tgit_oid;
      path : pcchar;
      size : Tgit_object_size_t;
      flags : Tuint32_t;
      mode : Tuint16_t;
      id_abbrev : Tuint16_t;
    end;
  TFunctionOutPpointerVarFileTgit_diff_fileBufPccharBuflenTsize_tPayloadPointerTcint = function (out:Ppointer; var file:Tgit_diff_file; buf:pcchar; buflen:Tsize_t; payload:pointer):Tcint;
  TFunctionOutPpointerVarFileTgit_diff_fileFullpathPccharPayloadPointerTcint = function (out:Ppointer; var file:Tgit_diff_file; fullpath:pcchar; payload:pointer):Tcint;

  Pgit_diff_delta = ^Tgit_diff_delta;
  Tgit_diff_delta = record
      status : Tgit_delta_t;
      flags : Tuint32_t;
      similarity : Tuint16_t;
      nfiles : Tuint16_t;
      old_file : Tgit_diff_file;
      new_file : Tgit_diff_file;
    end;

  Tgit_diff_notify_cb = function (var diff_so_far:Tgit_diff; var delta_to_add:Tgit_diff_delta; matched_pathspec:pcchar; payload:pointer):Tcint;cdecl;

  Tgit_diff_progress_cb = function (var diff_so_far:Tgit_diff; old_path:pcchar; new_path:pcchar; payload:pointer):Tcint;cdecl;

  Pgit_diff_options = ^Tgit_diff_options;
  Tgit_diff_options = record
      version : Tcuint;
      flags : Tuint32_t;
      ignore_submodules : Tgit_submodule_ignore_t;
      pathspec : Tgit_strarray;
      notify_cb : Tgit_diff_notify_cb;
      progress_cb : Tgit_diff_progress_cb;
      payload : pointer;
      context_lines : Tuint32_t;
      interhunk_lines : Tuint32_t;
      id_abbrev : Tuint16_t;
      max_size : Tgit_off_t;
      old_prefix : pcchar;
      new_prefix : pcchar;
    end;

function git_diff_options_init(var opts:Tgit_diff_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_diff_options_init';
type

  Tgit_diff_file_cb = function (var delta:Tgit_diff_delta; progress:Tcfloat; payload:pointer):Tcint;cdecl;

  Pgit_diff_binary_t = ^Tgit_diff_binary_t;
  Tgit_diff_binary_t =  Longint;
  Const
    GIT_DIFF_BINARY_NONE = 0;
    GIT_DIFF_BINARY_LITERAL = 1;
    GIT_DIFF_BINARY_DELTA = 2;

type
  Pgit_diff_binary_file = ^Tgit_diff_binary_file;
  Tgit_diff_binary_file = record
      _type : Tgit_diff_binary_t;
      data : pcchar;
      datalen : Tsize_t;
      inflatedlen : Tsize_t;
    end;

  Pgit_diff_binary = ^Tgit_diff_binary;
  Tgit_diff_binary = record
      contains_data : Tcuint;
      old_file : Tgit_diff_binary_file;
      new_file : Tgit_diff_binary_file;
    end;

  Tgit_diff_binary_cb = function (var delta:Tgit_diff_delta; var binary:Tgit_diff_binary; payload:pointer):Tcint;cdecl;

  Pgit_diff_hunk = ^Tgit_diff_hunk;
  Tgit_diff_hunk = record
      old_start : Tcint;
      old_lines : Tcint;
      new_start : Tcint;
      new_lines : Tcint;
      header_len : Tsize_t;
      header : TArray0to127OfTcchar;
    end;

  Tgit_diff_hunk_cb = function (var delta:Tgit_diff_delta; var hunk:Tgit_diff_hunk; payload:pointer):Tcint;cdecl;

  Pgit_diff_line_t = ^Tgit_diff_line_t;
  Tgit_diff_line_t =  Longint;
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
  Pgit_diff_line = ^Tgit_diff_line;
  Tgit_diff_line = record
      origin : Tcchar;
      old_lineno : Tcint;
      new_lineno : Tcint;
      num_lines : Tcint;
      content_len : Tsize_t;
      content_offset : Tgit_off_t;
      content : pcchar;
    end;

  Tgit_diff_line_cb = function (var delta:Tgit_diff_delta; var hunk:Tgit_diff_hunk; var line:Tgit_diff_line; payload:pointer):Tcint;cdecl;

  Pgit_diff_find_t = ^Tgit_diff_find_t;
  Tgit_diff_find_t =  Longint;
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
  Pgit_diff_similarity_metric = ^Tgit_diff_similarity_metric;
  Tgit_diff_similarity_metric = record
      file_signature : TFunctionOutPpointerVarFileTgit_diff_fileFullpathPccharPayloadPointerTcint;cdecl;
      buffer_signature : TFunctionOutPpointerVarFileTgit_diff_fileBufPccharBuflenTsize_tPayloadPointerTcint;cdecl;
      free_signature : TProcedureSigPointerPayloadPointer;cdecl;
      similarity : TFunctionVarScoreTcintSigaPointerSigbPointerPayloadPointerTcint;cdecl;
      payload : pointer;
    end;

  Pgit_diff_find_options = ^Tgit_diff_find_options;
  Tgit_diff_find_options = record
      version : Tcuint;
      flags : Tuint32_t;
      rename_threshold : Tuint16_t;
      rename_from_rewrite_threshold : Tuint16_t;
      copy_threshold : Tuint16_t;
      break_rewrite_threshold : Tuint16_t;
      rename_limit : Tsize_t;
      metric : Pgit_diff_similarity_metric;
    end;

function git_diff_find_options_init(var opts:Tgit_diff_find_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_diff_find_options_init';
procedure git_diff_free(var diff:Tgit_diff);cdecl;external External_library name 'git_diff_free';
function git_diff_tree_to_tree(var diff:Pgit_diff; var repo:Tgit_repository; var old_tree:Tgit_tree; var new_tree:Tgit_tree; var opts:Tgit_diff_options):Tcint;cdecl;external External_library name 'git_diff_tree_to_tree';
function git_diff_tree_to_index(var diff:Pgit_diff; var repo:Tgit_repository; var old_tree:Tgit_tree; var index:Tgit_index; var opts:Tgit_diff_options):Tcint;cdecl;external External_library name 'git_diff_tree_to_index';
function git_diff_index_to_workdir(var diff:Pgit_diff; var repo:Tgit_repository; var index:Tgit_index; var opts:Tgit_diff_options):Tcint;cdecl;external External_library name 'git_diff_index_to_workdir';
function git_diff_tree_to_workdir(var diff:Pgit_diff; var repo:Tgit_repository; var old_tree:Tgit_tree; var opts:Tgit_diff_options):Tcint;cdecl;external External_library name 'git_diff_tree_to_workdir';
function git_diff_tree_to_workdir_with_index(var diff:Pgit_diff; var repo:Tgit_repository; var old_tree:Tgit_tree; var opts:Tgit_diff_options):Tcint;cdecl;external External_library name 'git_diff_tree_to_workdir_with_index';
function git_diff_index_to_index(var diff:Pgit_diff; var repo:Tgit_repository; var old_index:Tgit_index; var new_index:Tgit_index; var opts:Tgit_diff_options):Tcint;cdecl;external External_library name 'git_diff_index_to_index';
function git_diff_merge(var onto:Tgit_diff; var from:Tgit_diff):Tcint;cdecl;external External_library name 'git_diff_merge';
function git_diff_find_similar(var diff:Tgit_diff; var options:Tgit_diff_find_options):Tcint;cdecl;external External_library name 'git_diff_find_similar';
function git_diff_num_deltas(var diff:Tgit_diff):Tsize_t;cdecl;external External_library name 'git_diff_num_deltas';
function git_diff_num_deltas_of_type(var diff:Tgit_diff; _type:Tgit_delta_t):Tsize_t;cdecl;external External_library name 'git_diff_num_deltas_of_type';
function git_diff_get_delta(var diff:Tgit_diff; idx:Tsize_t):Pgit_diff_delta;cdecl;external External_library name 'git_diff_get_delta';
function git_diff_is_sorted_icase(var diff:Tgit_diff):Tcint;cdecl;external External_library name 'git_diff_is_sorted_icase';
function git_diff_foreach(var diff:Tgit_diff; file_cb:Tgit_diff_file_cb; binary_cb:Tgit_diff_binary_cb; hunk_cb:Tgit_diff_hunk_cb; line_cb:Tgit_diff_line_cb; 
           payload:pointer):Tcint;cdecl;external External_library name 'git_diff_foreach';
function git_diff_status_char(status:Tgit_delta_t):Tcchar;cdecl;external External_library name 'git_diff_status_char';
type
  Pgit_diff_format_t = ^Tgit_diff_format_t;
  Tgit_diff_format_t =  Longint;
  Const
    GIT_DIFF_FORMAT_PATCH = 1;
    GIT_DIFF_FORMAT_PATCH_HEADER = 2;
    GIT_DIFF_FORMAT_RAW = 3;
    GIT_DIFF_FORMAT_NAME_ONLY = 4;
    GIT_DIFF_FORMAT_NAME_STATUS = 5;
    GIT_DIFF_FORMAT_PATCH_ID = 6;


function git_diff_print(var diff:Tgit_diff; format:Tgit_diff_format_t; print_cb:Tgit_diff_line_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_diff_print';
function git_diff_to_buf(var out:Tgit_buf; var diff:Tgit_diff; format:Tgit_diff_format_t):Tcint;cdecl;external External_library name 'git_diff_to_buf';
function git_diff_blobs(var old_blob:Tgit_blob; old_as_path:pcchar; var new_blob:Tgit_blob; new_as_path:pcchar; var options:Tgit_diff_options; 
           file_cb:Tgit_diff_file_cb; binary_cb:Tgit_diff_binary_cb; hunk_cb:Tgit_diff_hunk_cb; line_cb:Tgit_diff_line_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_diff_blobs';
function git_diff_blob_to_buffer(var old_blob:Tgit_blob; old_as_path:pcchar; buffer:pcchar; buffer_len:Tsize_t; buffer_as_path:pcchar; 
           var options:Tgit_diff_options; file_cb:Tgit_diff_file_cb; binary_cb:Tgit_diff_binary_cb; hunk_cb:Tgit_diff_hunk_cb; line_cb:Tgit_diff_line_cb; 
           payload:pointer):Tcint;cdecl;external External_library name 'git_diff_blob_to_buffer';
function git_diff_buffers(old_buffer:pointer; old_len:Tsize_t; old_as_path:pcchar; new_buffer:pointer; new_len:Tsize_t; 
           new_as_path:pcchar; var options:Tgit_diff_options; file_cb:Tgit_diff_file_cb; binary_cb:Tgit_diff_binary_cb; hunk_cb:Tgit_diff_hunk_cb; 
           line_cb:Tgit_diff_line_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_diff_buffers';
function git_diff_from_buffer(var out:Pgit_diff; content:pcchar; content_len:Tsize_t):Tcint;cdecl;external External_library name 'git_diff_from_buffer';
type

  Pgit_diff_stats_format_t = ^Tgit_diff_stats_format_t;
  Tgit_diff_stats_format_t =  Longint;
  Const
    GIT_DIFF_STATS_NONE = 0;
    GIT_DIFF_STATS_FULL = 1 shl 0;
    GIT_DIFF_STATS_SHORT = 1 shl 1;
    GIT_DIFF_STATS_NUMBER = 1 shl 2;
    GIT_DIFF_STATS_INCLUDE_SUMMARY = 1 shl 3;


function git_diff_get_stats(var out:Pgit_diff_stats; var diff:Tgit_diff):Tcint;cdecl;external External_library name 'git_diff_get_stats';
function git_diff_stats_files_changed(var stats:Tgit_diff_stats):Tsize_t;cdecl;external External_library name 'git_diff_stats_files_changed';
function git_diff_stats_insertions(var stats:Tgit_diff_stats):Tsize_t;cdecl;external External_library name 'git_diff_stats_insertions';
function git_diff_stats_deletions(var stats:Tgit_diff_stats):Tsize_t;cdecl;external External_library name 'git_diff_stats_deletions';
function git_diff_stats_to_buf(var out:Tgit_buf; var stats:Tgit_diff_stats; format:Tgit_diff_stats_format_t; width:Tsize_t):Tcint;cdecl;external External_library name 'git_diff_stats_to_buf';
procedure git_diff_stats_free(var stats:Tgit_diff_stats);cdecl;external External_library name 'git_diff_stats_free';
type
  Pgit_diff_format_email_flags_t = ^Tgit_diff_format_email_flags_t;
  Tgit_diff_format_email_flags_t =  Longint;
  Const
    GIT_DIFF_FORMAT_EMAIL_NONE = 0;
    GIT_DIFF_FORMAT_EMAIL_EXCLUDE_SUBJECT_PATCH_MARKER = 1 shl 0;

type
  Pgit_diff_format_email_options = ^Tgit_diff_format_email_options;
  Tgit_diff_format_email_options = record
      version : Tcuint;
      flags : Tuint32_t;
      patch_no : Tsize_t;
      total_patches : Tsize_t;
      id : Pgit_oid;
      summary : pcchar;
      body : pcchar;
      author : Pgit_signature;
    end;

function git_diff_format_email(var out:Tgit_buf; var diff:Tgit_diff; var opts:Tgit_diff_format_email_options):Tcint;cdecl;external External_library name 'git_diff_format_email';
function git_diff_commit_as_email(var out:Tgit_buf; var repo:Tgit_repository; var commit:Tgit_commit; patch_no:Tsize_t; total_patches:Tsize_t; 
           flags:Tuint32_t; var diff_opts:Tgit_diff_options):Tcint;cdecl;external External_library name 'git_diff_commit_as_email';
function git_diff_format_email_options_init(var opts:Tgit_diff_format_email_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_diff_format_email_options_init';
type
  Pgit_diff_patchid_options = ^Tgit_diff_patchid_options;
  Tgit_diff_patchid_options = record
      version : Tcuint;
    end;

function git_diff_patchid_options_init(var opts:Tgit_diff_patchid_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_diff_patchid_options_init';
function git_diff_patchid(var out:Tgit_oid; var diff:Tgit_diff; var opts:Tgit_diff_patchid_options):Tcint;cdecl;external External_library name 'git_diff_patchid';
type

  Tgit_apply_delta_cb = function (var delta:Tgit_diff_delta; payload:pointer):Tcint;cdecl;

  Tgit_apply_hunk_cb = function (var hunk:Tgit_diff_hunk; payload:pointer):Tcint;cdecl;

  Pgit_apply_flags_t = ^Tgit_apply_flags_t;
  Tgit_apply_flags_t =  Longint;
  Const
    GIT_APPLY_CHECK = 1 shl 0;

type
  Pgit_apply_options = ^Tgit_apply_options;
  Tgit_apply_options = record
      version : Tcuint;
      delta_cb : Tgit_apply_delta_cb;
      hunk_cb : Tgit_apply_hunk_cb;
      payload : pointer;
      flags : Tcuint;
    end;

function git_apply_options_init(var opts:Tgit_apply_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_apply_options_init';
function git_apply_to_tree(var out:Pgit_index; var repo:Tgit_repository; var preimage:Tgit_tree; var diff:Tgit_diff; var options:Tgit_apply_options):Tcint;cdecl;external External_library name 'git_apply_to_tree';
type
  Pgit_apply_location_t = ^Tgit_apply_location_t;
  Tgit_apply_location_t =  Longint;
  Const
    GIT_APPLY_LOCATION_WORKDIR = 0;
    GIT_APPLY_LOCATION_INDEX = 1;
    GIT_APPLY_LOCATION_BOTH = 2;


function git_apply(var repo:Tgit_repository; var diff:Tgit_diff; location:Tgit_apply_location_t; var options:Tgit_apply_options):Tcint;cdecl;external External_library name 'git_apply';
type
  Pgit_attr_value_t = ^Tgit_attr_value_t;
  Tgit_attr_value_t =  Longint;
  Const
    GIT_ATTR_VALUE_UNSPECIFIED = 0;
    GIT_ATTR_VALUE_TRUE = 1;
    GIT_ATTR_VALUE_FALSE = 2;
    GIT_ATTR_VALUE_STRING = 3;


function git_attr_value(attr:pcchar):Tgit_attr_value_t;cdecl;external External_library name 'git_attr_value';
function git_attr_get(value_out:Ppcchar; var repo:Tgit_repository; flags:Tuint32_t; path:pcchar; name:pcchar):Tcint;cdecl;external External_library name 'git_attr_get';
function git_attr_get_many(values_out:Ppcchar; var repo:Tgit_repository; flags:Tuint32_t; path:pcchar; num_attr:Tsize_t; 
           names:Ppcchar):Tcint;cdecl;external External_library name 'git_attr_get_many';
type

  Tgit_attr_foreach_cb = function (name:pcchar; value:pcchar; payload:pointer):Tcint;cdecl;

function git_attr_foreach(var repo:Tgit_repository; flags:Tuint32_t; path:pcchar; callback:Tgit_attr_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_attr_foreach';
function git_attr_cache_flush(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_attr_cache_flush';
function git_attr_add_macro(var repo:Tgit_repository; name:pcchar; values:pcchar):Tcint;cdecl;external External_library name 'git_attr_add_macro';
function git_blob_lookup(var blob:Pgit_blob; var repo:Tgit_repository; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_blob_lookup';
function git_blob_lookup_prefix(var blob:Pgit_blob; var repo:Tgit_repository; var id:Tgit_oid; len:Tsize_t):Tcint;cdecl;external External_library name 'git_blob_lookup_prefix';
procedure git_blob_free(var blob:Tgit_blob);cdecl;external External_library name 'git_blob_free';
function git_blob_id(var blob:Tgit_blob):Pgit_oid;cdecl;external External_library name 'git_blob_id';
function git_blob_owner(var blob:Tgit_blob):Pgit_repository;cdecl;external External_library name 'git_blob_owner';
function git_blob_rawcontent(var blob:Tgit_blob):pointer;cdecl;external External_library name 'git_blob_rawcontent';
function git_blob_rawsize(var blob:Tgit_blob):Tgit_object_size_t;cdecl;external External_library name 'git_blob_rawsize';
type
  Pgit_blob_filter_flag_t = ^Tgit_blob_filter_flag_t;
  Tgit_blob_filter_flag_t =  Longint;
  Const
    GIT_BLOB_FILTER_CHECK_FOR_BINARY = 1 shl 0;
    GIT_BLOB_FILTER_NO_SYSTEM_ATTRIBUTES = 1 shl 1;
    GIT_BLOB_FILTER_ATTTRIBUTES_FROM_HEAD = 1 shl 2;

type
  Pgit_blob_filter_options = ^Tgit_blob_filter_options;
  Tgit_blob_filter_options = record
      version : Tcint;
      flags : Tuint32_t;
    end;

function git_blob_filter(var out:Tgit_buf; var blob:Tgit_blob; as_path:pcchar; var opts:Tgit_blob_filter_options):Tcint;cdecl;external External_library name 'git_blob_filter';
function git_blob_create_from_workdir(var id:Tgit_oid; var repo:Tgit_repository; relative_path:pcchar):Tcint;cdecl;external External_library name 'git_blob_create_from_workdir';
function git_blob_create_from_disk(var id:Tgit_oid; var repo:Tgit_repository; path:pcchar):Tcint;cdecl;external External_library name 'git_blob_create_from_disk';
function git_blob_create_from_stream(var out:Pgit_writestream; var repo:Tgit_repository; hintpath:pcchar):Tcint;cdecl;external External_library name 'git_blob_create_from_stream';
function git_blob_create_from_stream_commit(var out:Tgit_oid; var stream:Tgit_writestream):Tcint;cdecl;external External_library name 'git_blob_create_from_stream_commit';
function git_blob_create_from_buffer(var id:Tgit_oid; var repo:Tgit_repository; buffer:pointer; len:Tsize_t):Tcint;cdecl;external External_library name 'git_blob_create_from_buffer';
function git_blob_is_binary(var blob:Tgit_blob):Tcint;cdecl;external External_library name 'git_blob_is_binary';
function git_blob_dup(var out:Pgit_blob; var source:Tgit_blob):Tcint;cdecl;external External_library name 'git_blob_dup';
type
  Pgit_blame_flag_t = ^Tgit_blame_flag_t;
  Tgit_blame_flag_t =  Longint;
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
  Pgit_blame_options = ^Tgit_blame_options;
  Tgit_blame_options = record
      version : Tcuint;
      flags : Tuint32_t;
      min_match_characters : Tuint16_t;
      newest_commit : Tgit_oid;
      oldest_commit : Tgit_oid;
      min_line : Tsize_t;
      max_line : Tsize_t;
    end;

function git_blame_options_init(var opts:Tgit_blame_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_blame_options_init';
type
  Pgit_blame_hunk = ^Tgit_blame_hunk;
  Tgit_blame_hunk = record
      lines_in_hunk : Tsize_t;
      final_commit_id : Tgit_oid;
      final_start_line_number : Tsize_t;
      final_signature : Pgit_signature;
      orig_commit_id : Tgit_oid;
      orig_path : pcchar;
      orig_start_line_number : Tsize_t;
      orig_signature : Pgit_signature;
      boundary : Tcchar;
    end;

function git_blame_get_hunk_count(var blame:Tgit_blame):Tuint32_t;cdecl;external External_library name 'git_blame_get_hunk_count';
function git_blame_get_hunk_byindex(var blame:Tgit_blame; index:Tuint32_t):Pgit_blame_hunk;cdecl;external External_library name 'git_blame_get_hunk_byindex';
function git_blame_get_hunk_byline(var blame:Tgit_blame; lineno:Tsize_t):Pgit_blame_hunk;cdecl;external External_library name 'git_blame_get_hunk_byline';
function git_blame_file(var out:Pgit_blame; var repo:Tgit_repository; path:pcchar; var options:Tgit_blame_options):Tcint;cdecl;external External_library name 'git_blame_file';
function git_blame_buffer(var out:Pgit_blame; var reference:Tgit_blame; buffer:pcchar; buffer_len:Tsize_t):Tcint;cdecl;external External_library name 'git_blame_buffer';
procedure git_blame_free(var blame:Tgit_blame);cdecl;external External_library name 'git_blame_free';
function git_branch_create(var out:Pgit_reference; var repo:Tgit_repository; branch_name:pcchar; var target:Tgit_commit; force:Tcint):Tcint;cdecl;external External_library name 'git_branch_create';
function git_branch_create_from_annotated(var ref_out:Pgit_reference; var repository:Tgit_repository; branch_name:pcchar; var commit:Tgit_annotated_commit; force:Tcint):Tcint;cdecl;external External_library name 'git_branch_create_from_annotated';
function git_branch_delete(var branch:Tgit_reference):Tcint;cdecl;external External_library name 'git_branch_delete';


function git_branch_iterator_new(var out:Pgit_branch_iterator; var repo:Tgit_repository; list_flags:Tgit_branch_t):Tcint;cdecl;external External_library name 'git_branch_iterator_new';
function git_branch_next(var out:Pgit_reference; var out_type:Tgit_branch_t; var iter:Tgit_branch_iterator):Tcint;cdecl;external External_library name 'git_branch_next';
procedure git_branch_iterator_free(var iter:Tgit_branch_iterator);cdecl;external External_library name 'git_branch_iterator_free';
function git_branch_move(var out:Pgit_reference; var branch:Tgit_reference; new_branch_name:pcchar; force:Tcint):Tcint;cdecl;external External_library name 'git_branch_move';
function git_branch_lookup(var out:Pgit_reference; var repo:Tgit_repository; branch_name:pcchar; branch_type:Tgit_branch_t):Tcint;cdecl;external External_library name 'git_branch_lookup';
function git_branch_name(out:Ppcchar; var ref:Tgit_reference):Tcint;cdecl;external External_library name 'git_branch_name';
function git_branch_upstream(var out:Pgit_reference; var branch:Tgit_reference):Tcint;cdecl;external External_library name 'git_branch_upstream';
function git_branch_set_upstream(var branch:Tgit_reference; branch_name:pcchar):Tcint;cdecl;external External_library name 'git_branch_set_upstream';
function git_branch_upstream_name(var out:Tgit_buf; var repo:Tgit_repository; refname:pcchar):Tcint;cdecl;external External_library name 'git_branch_upstream_name';
function git_branch_is_head(var branch:Tgit_reference):Tcint;cdecl;external External_library name 'git_branch_is_head';
function git_branch_is_checked_out(var branch:Tgit_reference):Tcint;cdecl;external External_library name 'git_branch_is_checked_out';
function git_branch_remote_name(var out:Tgit_buf; var repo:Tgit_repository; refname:pcchar):Tcint;cdecl;external External_library name 'git_branch_remote_name';
function git_branch_upstream_remote(var buf:Tgit_buf; var repo:Tgit_repository; refname:pcchar):Tcint;cdecl;external External_library name 'git_branch_upstream_remote';
type
  Pgit_cert_t = ^Tgit_cert_t;
  Tgit_cert_t =  Longint;
  Const
    GIT_CERT_NONE = 0;
    GIT_CERT_X509 = 1;
    GIT_CERT_HOSTKEY_LIBSSH2 = 2;
    GIT_CERT_STRARRAY = 3;

type
  Pgit_cert = ^Tgit_cert;
  Tgit_cert = record
      cert_type : Tgit_cert_t;
    end;


  Tgit_transport_certificate_check_cb = function (var cert:Tgit_cert; valid:Tcint; host:pcchar; payload:pointer):Tcint;cdecl;

  Pgit_cert_ssh_t = ^Tgit_cert_ssh_t;
  Tgit_cert_ssh_t =  Longint;
  Const
    GIT_CERT_SSH_MD5 = 1 shl 0;
    GIT_CERT_SSH_SHA1 = 1 shl 1;
    GIT_CERT_SSH_SHA256 = 1 shl 2;

type
  Pgit_cert_hostkey = ^Tgit_cert_hostkey;
  Tgit_cert_hostkey = record
      parent : Tgit_cert;
      _type : Tgit_cert_ssh_t;
      hash_md5 : TArray0to15OfTcuchar;
      hash_sha1 : TArray0to19OfTcuchar;
      hash_sha256 : TArray0to31OfTcuchar;
    end;

  Pgit_cert_x509 = ^Tgit_cert_x509;
  Tgit_cert_x509 = record
      parent : Tgit_cert;
      data : pointer;
      len : Tsize_t;
    end;

  Pgit_checkout_strategy_t = ^Tgit_checkout_strategy_t;
  Tgit_checkout_strategy_t =  Longint;
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
  Pgit_checkout_notify_t = ^Tgit_checkout_notify_t;
  Tgit_checkout_notify_t =  Longint;
  Const
    GIT_CHECKOUT_NOTIFY_NONE = 0;
    GIT_CHECKOUT_NOTIFY_CONFLICT = 1 shl 0;
    GIT_CHECKOUT_NOTIFY_DIRTY = 1 shl 1;
    GIT_CHECKOUT_NOTIFY_UPDATED = 1 shl 2;
    GIT_CHECKOUT_NOTIFY_UNTRACKED = 1 shl 3;
    GIT_CHECKOUT_NOTIFY_IGNORED = 1 shl 4;
    GIT_CHECKOUT_NOTIFY_ALL = $0FFFF;

type
  Pgit_checkout_perfdata = ^Tgit_checkout_perfdata;
  Tgit_checkout_perfdata = record
      mkdir_calls : Tsize_t;
      stat_calls : Tsize_t;
      chmod_calls : Tsize_t;
    end;

  Tgit_checkout_notify_cb = function (why:Tgit_checkout_notify_t; path:pcchar; var baseline:Tgit_diff_file; var target:Tgit_diff_file; var workdir:Tgit_diff_file; 
               payload:pointer):Tcint;cdecl;

  Tgit_checkout_progress_cb = procedure (path:pcchar; completed_steps:Tsize_t; total_steps:Tsize_t; payload:pointer);cdecl;

  Tgit_checkout_perfdata_cb = procedure (var perfdata:Tgit_checkout_perfdata; payload:pointer);cdecl;

  Pgit_checkout_options = ^Tgit_checkout_options;
  Tgit_checkout_options = record
      version : Tcuint;
      checkout_strategy : Tcuint;
      disable_filters : Tcint;
      dir_mode : Tcuint;
      file_mode : Tcuint;
      file_open_flags : Tcint;
      notify_flags : Tcuint;
      notify_cb : Tgit_checkout_notify_cb;
      notify_payload : pointer;
      progress_cb : Tgit_checkout_progress_cb;
      progress_payload : pointer;
      paths : Tgit_strarray;
      baseline : Pgit_tree;
      baseline_index : Pgit_index;
      target_directory : pcchar;
      ancestor_label : pcchar;
      our_label : pcchar;
      their_label : pcchar;
      perfdata_cb : Tgit_checkout_perfdata_cb;
      perfdata_payload : pointer;
    end;

function git_checkout_options_init(var opts:Tgit_checkout_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_checkout_options_init';
function git_checkout_head(var repo:Tgit_repository; var opts:Tgit_checkout_options):Tcint;cdecl;external External_library name 'git_checkout_head';
function git_checkout_index(var repo:Tgit_repository; var index:Tgit_index; var opts:Tgit_checkout_options):Tcint;cdecl;external External_library name 'git_checkout_index';
function git_checkout_tree(var repo:Tgit_repository; var treeish:Tgit_object; var opts:Tgit_checkout_options):Tcint;cdecl;external External_library name 'git_checkout_tree';
type
  Pgit_oidarray = ^Tgit_oidarray;
  Tgit_oidarray = record
      ids : Pgit_oid;
      count : Tsize_t;
    end;

procedure git_oidarray_free(var array:Tgit_oidarray);cdecl;external External_library name 'git_oidarray_free';
type

  Pgit_indexer_progress = ^Tgit_indexer_progress;
  Tgit_indexer_progress = record
      total_objects : Tcuint;
      indexed_objects : Tcuint;
      received_objects : Tcuint;
      local_objects : Tcuint;
      total_deltas : Tcuint;
      indexed_deltas : Tcuint;
      received_bytes : Tsize_t;
    end;
  TFunctionVarWritepackTgit_odb_writepackDataPointerSizeTsize_tVarStatsTgit_indexer_progressTcint = function (var writepack:Tgit_odb_writepack; data:pointer; size:Tsize_t; var stats:Tgit_indexer_progress):Tcint;
  TFunctionVarWritepackTgit_odb_writepackVarStatsTgit_indexer_progressTcint = function (var writepack:Tgit_odb_writepack; var stats:Tgit_indexer_progress):Tcint;

  Tgit_indexer_progress_cb = function (var stats:Tgit_indexer_progress; payload:pointer):Tcint;cdecl;

  Pgit_indexer_options = ^Tgit_indexer_options;
  Tgit_indexer_options = record
      version : Tcuint;
      progress_cb : Tgit_indexer_progress_cb;
      progress_cb_payload : pointer;
      verify : Tcuchar;
    end;

function git_indexer_options_init(var opts:Tgit_indexer_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_indexer_options_init';
function git_indexer_new(var out:Pgit_indexer; path:pcchar; mode:Tcuint; var odb:Tgit_odb; var opts:Tgit_indexer_options):Tcint;cdecl;external External_library name 'git_indexer_new';
function git_indexer_append(var idx:Tgit_indexer; data:pointer; size:Tsize_t; var stats:Tgit_indexer_progress):Tcint;cdecl;external External_library name 'git_indexer_append';
function git_indexer_commit(var idx:Tgit_indexer; var stats:Tgit_indexer_progress):Tcint;cdecl;external External_library name 'git_indexer_commit';
function git_indexer_hash(var idx:Tgit_indexer):Pgit_oid;cdecl;external External_library name 'git_indexer_hash';
procedure git_indexer_free(var idx:Tgit_indexer);cdecl;external External_library name 'git_indexer_free';
type
  Pgit_index_time = ^Tgit_index_time;
  Tgit_index_time = record
      seconds : Tint32_t;
      nanoseconds : Tuint32_t;
    end;

  Pgit_index_entry = ^Tgit_index_entry;
  Tgit_index_entry = record
      ctime : Tgit_index_time;
      mtime : Tgit_index_time;
      dev : Tuint32_t;
      ino : Tuint32_t;
      mode : Tuint32_t;
      uid : Tuint32_t;
      gid : Tuint32_t;
      file_size : Tuint32_t;
      id : Tgit_oid;
      flags : Tuint16_t;
      flags_extended : Tuint16_t;
      path : pcchar;
    end;

  Pgit_index_entry_flag_t = ^Tgit_index_entry_flag_t;
  Tgit_index_entry_flag_t =  Longint;
  Const
    GIT_INDEX_ENTRY_EXTENDED = $4000;
    GIT_INDEX_ENTRY_VALID = $8000;

type
  Pgit_index_entry_extended_flag_t = ^Tgit_index_entry_extended_flag_t;
  Tgit_index_entry_extended_flag_t =  Longint;
  Const
    GIT_INDEX_ENTRY_INTENT_TO_ADD = 1 shl 13;
    GIT_INDEX_ENTRY_SKIP_WORKTREE = 1 shl 14;
    GIT_INDEX_ENTRY_EXTENDED_FLAGS = GIT_INDEX_ENTRY_INTENT_TO_ADD or GIT_INDEX_ENTRY_SKIP_WORKTREE;
    GIT_INDEX_ENTRY_UPTODATE = 1 shl 2;

type
  Pgit_index_capability_t = ^Tgit_index_capability_t;
  Tgit_index_capability_t =  Longint;
  Const
    GIT_INDEX_CAPABILITY_IGNORE_CASE = 1;
    GIT_INDEX_CAPABILITY_NO_FILEMODE = 2;
    GIT_INDEX_CAPABILITY_NO_SYMLINKS = 4;
    GIT_INDEX_CAPABILITY_FROM_OWNER = -(1);

type

  Tgit_index_matched_path_cb = function (path:pcchar; matched_pathspec:pcchar; payload:pointer):Tcint;cdecl;

  Pgit_index_add_option_t = ^Tgit_index_add_option_t;
  Tgit_index_add_option_t =  Longint;
  Const
    GIT_INDEX_ADD_DEFAULT = 0;
    GIT_INDEX_ADD_FORCE = 1 shl 0;
    GIT_INDEX_ADD_DISABLE_PATHSPEC_MATCH = 1 shl 1;
    GIT_INDEX_ADD_CHECK_PATHSPEC = 1 shl 2;

type
  Pgit_index_stage_t = ^Tgit_index_stage_t;
  Tgit_index_stage_t =  Longint;
  Const
    GIT_INDEX_STAGE_ANY = -(1);
    GIT_INDEX_STAGE_NORMAL = 0;
    GIT_INDEX_STAGE_ANCESTOR = 1;
    GIT_INDEX_STAGE_OURS = 2;
    GIT_INDEX_STAGE_THEIRS = 3;


function git_index_open(var out:Pgit_index; index_path:pcchar):Tcint;cdecl;external External_library name 'git_index_open';
function git_index_new(var out:Pgit_index):Tcint;cdecl;external External_library name 'git_index_new';
procedure git_index_free(var index:Tgit_index);cdecl;external External_library name 'git_index_free';
function git_index_owner(var index:Tgit_index):Pgit_repository;cdecl;external External_library name 'git_index_owner';
function git_index_caps(var index:Tgit_index):Tcint;cdecl;external External_library name 'git_index_caps';
function git_index_set_caps(var index:Tgit_index; caps:Tcint):Tcint;cdecl;external External_library name 'git_index_set_caps';
function git_index_version(var index:Tgit_index):Tcuint;cdecl;external External_library name 'git_index_version';
function git_index_set_version(var index:Tgit_index; version:Tcuint):Tcint;cdecl;external External_library name 'git_index_set_version';
function git_index_read(var index:Tgit_index; force:Tcint):Tcint;cdecl;external External_library name 'git_index_read';
function git_index_write(var index:Tgit_index):Tcint;cdecl;external External_library name 'git_index_write';
function git_index_path(var index:Tgit_index):pcchar;cdecl;external External_library name 'git_index_path';
function git_index_checksum(var index:Tgit_index):Pgit_oid;cdecl;external External_library name 'git_index_checksum';
function git_index_read_tree(var index:Tgit_index; var tree:Tgit_tree):Tcint;cdecl;external External_library name 'git_index_read_tree';
function git_index_write_tree(var out:Tgit_oid; var index:Tgit_index):Tcint;cdecl;external External_library name 'git_index_write_tree';
function git_index_write_tree_to(var out:Tgit_oid; var index:Tgit_index; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_index_write_tree_to';
function git_index_entrycount(var index:Tgit_index):Tsize_t;cdecl;external External_library name 'git_index_entrycount';
function git_index_clear(var index:Tgit_index):Tcint;cdecl;external External_library name 'git_index_clear';
function git_index_get_byindex(var index:Tgit_index; n:Tsize_t):Pgit_index_entry;cdecl;external External_library name 'git_index_get_byindex';
function git_index_get_bypath(var index:Tgit_index; path:pcchar; stage:Tcint):Pgit_index_entry;cdecl;external External_library name 'git_index_get_bypath';
function git_index_remove(var index:Tgit_index; path:pcchar; stage:Tcint):Tcint;cdecl;external External_library name 'git_index_remove';
function git_index_remove_directory(var index:Tgit_index; dir:pcchar; stage:Tcint):Tcint;cdecl;external External_library name 'git_index_remove_directory';
function git_index_add(var index:Tgit_index; var source_entry:Tgit_index_entry):Tcint;cdecl;external External_library name 'git_index_add';
function git_index_entry_stage(var entry:Tgit_index_entry):Tcint;cdecl;external External_library name 'git_index_entry_stage';
function git_index_entry_is_conflict(var entry:Tgit_index_entry):Tcint;cdecl;external External_library name 'git_index_entry_is_conflict';
function git_index_iterator_new(var iterator_out:Pgit_index_iterator; var index:Tgit_index):Tcint;cdecl;external External_library name 'git_index_iterator_new';
function git_index_iterator_next(var out:Pgit_index_entry; var iterator:Tgit_index_iterator):Tcint;cdecl;external External_library name 'git_index_iterator_next';
procedure git_index_iterator_free(var iterator:Tgit_index_iterator);cdecl;external External_library name 'git_index_iterator_free';
function git_index_add_bypath(var index:Tgit_index; path:pcchar):Tcint;cdecl;external External_library name 'git_index_add_bypath';
function git_index_add_from_buffer(var index:Tgit_index; var entry:Tgit_index_entry; buffer:pointer; len:Tsize_t):Tcint;cdecl;external External_library name 'git_index_add_from_buffer';
function git_index_remove_bypath(var index:Tgit_index; path:pcchar):Tcint;cdecl;external External_library name 'git_index_remove_bypath';
function git_index_add_all(var index:Tgit_index; var pathspec:Tgit_strarray; flags:Tcuint; callback:Tgit_index_matched_path_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_index_add_all';
function git_index_remove_all(var index:Tgit_index; var pathspec:Tgit_strarray; callback:Tgit_index_matched_path_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_index_remove_all';
function git_index_update_all(var index:Tgit_index; var pathspec:Tgit_strarray; callback:Tgit_index_matched_path_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_index_update_all';
function git_index_find(var at_pos:Tsize_t; var index:Tgit_index; path:pcchar):Tcint;cdecl;external External_library name 'git_index_find';
function git_index_find_prefix(var at_pos:Tsize_t; var index:Tgit_index; prefix:pcchar):Tcint;cdecl;external External_library name 'git_index_find_prefix';
function git_index_conflict_add(var index:Tgit_index; var ancestor_entry:Tgit_index_entry; var our_entry:Tgit_index_entry; var their_entry:Tgit_index_entry):Tcint;cdecl;external External_library name 'git_index_conflict_add';
function git_index_conflict_get(var ancestor_out:Pgit_index_entry; var our_out:Pgit_index_entry; var their_out:Pgit_index_entry; var index:Tgit_index; path:pcchar):Tcint;cdecl;external External_library name 'git_index_conflict_get';
function git_index_conflict_remove(var index:Tgit_index; path:pcchar):Tcint;cdecl;external External_library name 'git_index_conflict_remove';
function git_index_conflict_cleanup(var index:Tgit_index):Tcint;cdecl;external External_library name 'git_index_conflict_cleanup';
function git_index_has_conflicts(var index:Tgit_index):Tcint;cdecl;external External_library name 'git_index_has_conflicts';
function git_index_conflict_iterator_new(var iterator_out:Pgit_index_conflict_iterator; var index:Tgit_index):Tcint;cdecl;external External_library name 'git_index_conflict_iterator_new';
function git_index_conflict_next(var ancestor_out:Pgit_index_entry; var our_out:Pgit_index_entry; var their_out:Pgit_index_entry; var iterator:Tgit_index_conflict_iterator):Tcint;cdecl;external External_library name 'git_index_conflict_next';
procedure git_index_conflict_iterator_free(var iterator:Tgit_index_conflict_iterator);cdecl;external External_library name 'git_index_conflict_iterator_free';
type
  Pgit_merge_file_input = ^Tgit_merge_file_input;
  Tgit_merge_file_input = record
      version : Tcuint;
      ptr : pcchar;
      size : Tsize_t;
      path : pcchar;
      mode : Tcuint;
    end;

function git_merge_file_input_init(var opts:Tgit_merge_file_input; version:Tcuint):Tcint;cdecl;external External_library name 'git_merge_file_input_init';
type
  Pgit_merge_flag_t = ^Tgit_merge_flag_t;
  Tgit_merge_flag_t =  Longint;
  Const
    GIT_MERGE_FIND_RENAMES = 1 shl 0;
    GIT_MERGE_FAIL_ON_CONFLICT = 1 shl 1;
    GIT_MERGE_SKIP_REUC = 1 shl 2;
    GIT_MERGE_NO_RECURSIVE = 1 shl 3;

type
  Pgit_merge_file_favor_t = ^Tgit_merge_file_favor_t;
  Tgit_merge_file_favor_t =  Longint;
  Const
    GIT_MERGE_FILE_FAVOR_NORMAL = 0;
    GIT_MERGE_FILE_FAVOR_OURS = 1;
    GIT_MERGE_FILE_FAVOR_THEIRS = 2;
    GIT_MERGE_FILE_FAVOR_UNION = 3;

type
  Pgit_merge_file_flag_t = ^Tgit_merge_file_flag_t;
  Tgit_merge_file_flag_t =  Longint;
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
  Pgit_merge_file_options = ^Tgit_merge_file_options;
  Tgit_merge_file_options = record
      version : Tcuint;
      ancestor_label : pcchar;
      our_label : pcchar;
      their_label : pcchar;
      favor : Tgit_merge_file_favor_t;
      flags : Tuint32_t;
      marker_size : Tcushort;
    end;

function git_merge_file_options_init(var opts:Tgit_merge_file_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_merge_file_options_init';
type
  Pgit_merge_file_result = ^Tgit_merge_file_result;
  Tgit_merge_file_result = record
      automergeable : Tcuint;
      path : pcchar;
      mode : Tcuint;
      ptr : pcchar;
      len : Tsize_t;
    end;

  Pgit_merge_options = ^Tgit_merge_options;
  Tgit_merge_options = record
      version : Tcuint;
      flags : Tuint32_t;
      rename_threshold : Tcuint;
      target_limit : Tcuint;
      metric : Pgit_diff_similarity_metric;
      recursion_limit : Tcuint;
      default_driver : pcchar;
      file_favor : Tgit_merge_file_favor_t;
      file_flags : Tuint32_t;
    end;

function git_merge_options_init(var opts:Tgit_merge_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_merge_options_init';
type
  Pgit_merge_analysis_t = ^Tgit_merge_analysis_t;
  Tgit_merge_analysis_t =  Longint;
  Const
    GIT_MERGE_ANALYSIS_NONE = 0;
    GIT_MERGE_ANALYSIS_NORMAL = 1 shl 0;
    GIT_MERGE_ANALYSIS_UP_TO_DATE = 1 shl 1;
    GIT_MERGE_ANALYSIS_FASTFORWARD = 1 shl 2;
    GIT_MERGE_ANALYSIS_UNBORN = 1 shl 3;

type
  Pgit_merge_preference_t = ^Tgit_merge_preference_t;
  Tgit_merge_preference_t =  Longint;
  Const
    GIT_MERGE_PREFERENCE_NONE = 0;
    GIT_MERGE_PREFERENCE_NO_FASTFORWARD = 1 shl 0;
    GIT_MERGE_PREFERENCE_FASTFORWARD_ONLY = 1 shl 1;


function git_merge_analysis(var analysis_out:Tgit_merge_analysis_t; var preference_out:Tgit_merge_preference_t; var repo:Tgit_repository; var their_heads:Pgit_annotated_commit; their_heads_len:Tsize_t):Tcint;cdecl;external External_library name 'git_merge_analysis';
function git_merge_analysis_for_ref(var analysis_out:Tgit_merge_analysis_t; var preference_out:Tgit_merge_preference_t; var repo:Tgit_repository; var our_ref:Tgit_reference; var their_heads:Pgit_annotated_commit; 
           their_heads_len:Tsize_t):Tcint;cdecl;external External_library name 'git_merge_analysis_for_ref';
function git_merge_base(var out:Tgit_oid; var repo:Tgit_repository; var one:Tgit_oid; var two:Tgit_oid):Tcint;cdecl;external External_library name 'git_merge_base';
function git_merge_bases(var out:Tgit_oidarray; var repo:Tgit_repository; var one:Tgit_oid; var two:Tgit_oid):Tcint;cdecl;external External_library name 'git_merge_bases';
function git_merge_base_many(var out:Tgit_oid; var repo:Tgit_repository; length:Tsize_t; input_array:Pgit_oid):Tcint;cdecl;external External_library name 'git_merge_base_many';
function git_merge_bases_many(var out:Tgit_oidarray; var repo:Tgit_repository; length:Tsize_t; input_array:Pgit_oid):Tcint;cdecl;external External_library name 'git_merge_bases_many';
function git_merge_base_octopus(var out:Tgit_oid; var repo:Tgit_repository; length:Tsize_t; input_array:Pgit_oid):Tcint;cdecl;external External_library name 'git_merge_base_octopus';
function git_merge_file(var out:Tgit_merge_file_result; var ancestor:Tgit_merge_file_input; var ours:Tgit_merge_file_input; var theirs:Tgit_merge_file_input; var opts:Tgit_merge_file_options):Tcint;cdecl;external External_library name 'git_merge_file';
function git_merge_file_from_index(var out:Tgit_merge_file_result; var repo:Tgit_repository; var ancestor:Tgit_index_entry; var ours:Tgit_index_entry; var theirs:Tgit_index_entry; 
           var opts:Tgit_merge_file_options):Tcint;cdecl;external External_library name 'git_merge_file_from_index';
procedure git_merge_file_result_free(var result:Tgit_merge_file_result);cdecl;external External_library name 'git_merge_file_result_free';
function git_merge_trees(var out:Pgit_index; var repo:Tgit_repository; var ancestor_tree:Tgit_tree; var our_tree:Tgit_tree; var their_tree:Tgit_tree; 
           var opts:Tgit_merge_options):Tcint;cdecl;external External_library name 'git_merge_trees';
function git_merge_commits(var out:Pgit_index; var repo:Tgit_repository; var our_commit:Tgit_commit; var their_commit:Tgit_commit; var opts:Tgit_merge_options):Tcint;cdecl;external External_library name 'git_merge_commits';
function git_merge(var repo:Tgit_repository; var their_heads:Pgit_annotated_commit; their_heads_len:Tsize_t; var merge_opts:Tgit_merge_options; var checkout_opts:Tgit_checkout_options):Tcint;cdecl;external External_library name 'git_merge';
type
  Pgit_cherrypick_options = ^Tgit_cherrypick_options;
  Tgit_cherrypick_options = record
      version : Tcuint;
      mainline : Tcuint;
      merge_opts : Tgit_merge_options;
      checkout_opts : Tgit_checkout_options;
    end;

function git_cherrypick_options_init(var opts:Tgit_cherrypick_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_cherrypick_options_init';
function git_cherrypick_commit(var out:Pgit_index; var repo:Tgit_repository; var cherrypick_commit:Tgit_commit; var our_commit:Tgit_commit; mainline:Tcuint; 
           var merge_options:Tgit_merge_options):Tcint;cdecl;external External_library name 'git_cherrypick_commit';
function git_cherrypick(var repo:Tgit_repository; var commit:Tgit_commit; var cherrypick_options:Tgit_cherrypick_options):Tcint;cdecl;external External_library name 'git_cherrypick';
type
  Pgit_direction = ^Tgit_direction;
  Tgit_direction =  Longint;
  Const
    GIT_DIRECTION_FETCH = 0;
    GIT_DIRECTION_PUSH = 1;

type
  Pgit_remote_head = ^Tgit_remote_head;
  Tgit_remote_head = record
      local : Tcint;
      oid : Tgit_oid;
      loid : Tgit_oid;
      name : pcchar;
      symref_target : pcchar;
    end;


function git_refspec_parse(var refspec:Pgit_refspec; input:pcchar; is_fetch:Tcint):Tcint;cdecl;external External_library name 'git_refspec_parse';
procedure git_refspec_free(var refspec:Tgit_refspec);cdecl;external External_library name 'git_refspec_free';
function git_refspec_src(var refspec:Tgit_refspec):pcchar;cdecl;external External_library name 'git_refspec_src';
function git_refspec_dst(var refspec:Tgit_refspec):pcchar;cdecl;external External_library name 'git_refspec_dst';
function git_refspec_string(var refspec:Tgit_refspec):pcchar;cdecl;external External_library name 'git_refspec_string';
function git_refspec_force(var refspec:Tgit_refspec):Tcint;cdecl;external External_library name 'git_refspec_force';
function git_refspec_direction(var spec:Tgit_refspec):Tgit_direction;cdecl;external External_library name 'git_refspec_direction';
function git_refspec_src_matches(var refspec:Tgit_refspec; refname:pcchar):Tcint;cdecl;external External_library name 'git_refspec_src_matches';
function git_refspec_dst_matches(var refspec:Tgit_refspec; refname:pcchar):Tcint;cdecl;external External_library name 'git_refspec_dst_matches';
function git_refspec_transform(var out:Tgit_buf; var spec:Tgit_refspec; name:pcchar):Tcint;cdecl;external External_library name 'git_refspec_transform';
function git_refspec_rtransform(var out:Tgit_buf; var spec:Tgit_refspec; name:pcchar):Tcint;cdecl;external External_library name 'git_refspec_rtransform';
type
  Pgit_credential_t = ^Tgit_credential_t;
  Tgit_credential_t =  Longint;
  Const
    GIT_CREDENTIAL_USERPASS_PLAINTEXT = 1 shl 0;
    GIT_CREDENTIAL_SSH_KEY = 1 shl 1;
    GIT_CREDENTIAL_SSH_CUSTOM = 1 shl 2;
    GIT_CREDENTIAL_DEFAULT = 1 shl 3;
    GIT_CREDENTIAL_SSH_INTERACTIVE = 1 shl 4;
    GIT_CREDENTIAL_USERNAME = 1 shl 5;
    GIT_CREDENTIAL_SSH_MEMORY = 1 shl 6;

type
  Tgit_credential = Tgit_credential_default;

  Tgit_credential_acquire_cb = function (var out:Pgit_credential; url:pcchar; username_from_url:pcchar; allowed_types:Tcuint; payload:pointer):Tcint;cdecl;

procedure git_credential_free(var cred:Tgit_credential);cdecl;external External_library name 'git_credential_free';
function git_credential_has_username(var cred:Tgit_credential):Tcint;cdecl;external External_library name 'git_credential_has_username';
function git_credential_get_username(var cred:Tgit_credential):pcchar;cdecl;external External_library name 'git_credential_get_username';
function git_credential_userpass_plaintext_new(var out:Pgit_credential; username:pcchar; password:pcchar):Tcint;cdecl;external External_library name 'git_credential_userpass_plaintext_new';
function git_credential_default_new(var out:Pgit_credential):Tcint;cdecl;external External_library name 'git_credential_default_new';
function git_credential_username_new(var out:Pgit_credential; username:pcchar):Tcint;cdecl;external External_library name 'git_credential_username_new';
function git_credential_ssh_key_new(var out:Pgit_credential; username:pcchar; publickey:pcchar; privatekey:pcchar; passphrase:pcchar):Tcint;cdecl;external External_library name 'git_credential_ssh_key_new';
function git_credential_ssh_key_memory_new(var out:Pgit_credential; username:pcchar; publickey:pcchar; privatekey:pcchar; passphrase:pcchar):Tcint;cdecl;external External_library name 'git_credential_ssh_key_memory_new';
type

  Tgit_credential_ssh_interactive_cb = procedure (name:pcchar; name_len:Tcint; instruction:pcchar; instruction_len:Tcint; num_prompts:Tcint; 
                var prompts:TLIBSSH2_USERAUTH_KBDINT_PROMPT; var responses:TLIBSSH2_USERAUTH_KBDINT_RESPONSE; abstract:Ppointer);cdecl;

function git_credential_ssh_interactive_new(var out:Pgit_credential; username:pcchar; prompt_callback:Tgit_credential_ssh_interactive_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_credential_ssh_interactive_new';
function git_credential_ssh_key_from_agent(var out:Pgit_credential; username:pcchar):Tcint;cdecl;external External_library name 'git_credential_ssh_key_from_agent';
type

  Tgit_credential_sign_cb = function (var session:TLIBSSH2_SESSION; sig:Ppcuchar; var sig_len:Tsize_t; data:pcuchar; data_len:Tsize_t; 
               abstract:Ppointer):Tcint;cdecl;

function git_credential_ssh_custom_new(var out:Pgit_credential; username:pcchar; publickey:pcchar; publickey_len:Tsize_t; sign_callback:Tgit_credential_sign_cb; 
           payload:pointer):Tcint;cdecl;external External_library name 'git_credential_ssh_custom_new';
type

  Tgit_transport_message_cb = function (str:pcchar; len:Tcint; payload:pointer):Tcint;cdecl;

  Tgit_transport_cb = function (var out:Pgit_transport; var owner:Tgit_remote; param:pointer):Tcint;cdecl;

  Pgit_packbuilder_stage_t = ^Tgit_packbuilder_stage_t;
  Tgit_packbuilder_stage_t =  Longint;
  Const
    GIT_PACKBUILDER_ADDING_OBJECTS = 0;
    GIT_PACKBUILDER_DELTAFICATION = 1;


function git_packbuilder_new(var out:Pgit_packbuilder; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_packbuilder_new';
function git_packbuilder_set_threads(var pb:Tgit_packbuilder; n:Tcuint):Tcuint;cdecl;external External_library name 'git_packbuilder_set_threads';
function git_packbuilder_insert(var pb:Tgit_packbuilder; var id:Tgit_oid; name:pcchar):Tcint;cdecl;external External_library name 'git_packbuilder_insert';
function git_packbuilder_insert_tree(var pb:Tgit_packbuilder; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_packbuilder_insert_tree';
function git_packbuilder_insert_commit(var pb:Tgit_packbuilder; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_packbuilder_insert_commit';
function git_packbuilder_insert_walk(var pb:Tgit_packbuilder; var walk:Tgit_revwalk):Tcint;cdecl;external External_library name 'git_packbuilder_insert_walk';
function git_packbuilder_insert_recur(var pb:Tgit_packbuilder; var id:Tgit_oid; name:pcchar):Tcint;cdecl;external External_library name 'git_packbuilder_insert_recur';
function git_packbuilder_write_buf(var buf:Tgit_buf; var pb:Tgit_packbuilder):Tcint;cdecl;external External_library name 'git_packbuilder_write_buf';
function git_packbuilder_write(var pb:Tgit_packbuilder; path:pcchar; mode:Tcuint; progress_cb:Tgit_indexer_progress_cb; progress_cb_payload:pointer):Tcint;cdecl;external External_library name 'git_packbuilder_write';
function git_packbuilder_hash(var pb:Tgit_packbuilder):Pgit_oid;cdecl;external External_library name 'git_packbuilder_hash';
type

  Tgit_packbuilder_foreach_cb = function (buf:pointer; size:Tsize_t; payload:pointer):Tcint;cdecl;

function git_packbuilder_foreach(var pb:Tgit_packbuilder; cb:Tgit_packbuilder_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_packbuilder_foreach';
function git_packbuilder_object_count(var pb:Tgit_packbuilder):Tsize_t;cdecl;external External_library name 'git_packbuilder_object_count';
function git_packbuilder_written(var pb:Tgit_packbuilder):Tsize_t;cdecl;external External_library name 'git_packbuilder_written';
type

  Tgit_packbuilder_progress = function (stage:Tcint; current:Tuint32_t; total:Tuint32_t; payload:pointer):Tcint;cdecl;

function git_packbuilder_set_callbacks(var pb:Tgit_packbuilder; progress_cb:Tgit_packbuilder_progress; progress_cb_payload:pointer):Tcint;cdecl;external External_library name 'git_packbuilder_set_callbacks';
procedure git_packbuilder_free(var pb:Tgit_packbuilder);cdecl;external External_library name 'git_packbuilder_free';
type
  Pgit_proxy_t = ^Tgit_proxy_t;
  Tgit_proxy_t =  Longint;
  Const
    GIT_PROXY_NONE = 0;
    GIT_PROXY_AUTO = 1;
    GIT_PROXY_SPECIFIED = 2;

type
  Pgit_proxy_options = ^Tgit_proxy_options;
  Tgit_proxy_options = record
      version : Tcuint;
      _type : Tgit_proxy_t;
      url : pcchar;
      credentials : Tgit_credential_acquire_cb;
      certificate_check : Tgit_transport_certificate_check_cb;
      payload : pointer;
    end;

function git_proxy_options_init(var opts:Tgit_proxy_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_proxy_options_init';
function git_remote_create(var out:Pgit_remote; var repo:Tgit_repository; name:pcchar; url:pcchar):Tcint;cdecl;external External_library name 'git_remote_create';
type
  Pgit_remote_create_flags = ^Tgit_remote_create_flags;
  Tgit_remote_create_flags =  Longint;
  Const
    GIT_REMOTE_CREATE_SKIP_INSTEADOF = 1 shl 0;
    GIT_REMOTE_CREATE_SKIP_DEFAULT_FETCHSPEC = 1 shl 1;

type
  Pgit_remote_create_options = ^Tgit_remote_create_options;
  Tgit_remote_create_options = record
      version : Tcuint;
      repository : Pgit_repository;
      name : pcchar;
      fetchspec : pcchar;
      flags : Tcuint;
    end;

function git_remote_create_options_init(var opts:Tgit_remote_create_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_remote_create_options_init';
function git_remote_create_with_opts(var out:Pgit_remote; url:pcchar; var opts:Tgit_remote_create_options):Tcint;cdecl;external External_library name 'git_remote_create_with_opts';
function git_remote_create_with_fetchspec(var out:Pgit_remote; var repo:Tgit_repository; name:pcchar; url:pcchar; fetch:pcchar):Tcint;cdecl;external External_library name 'git_remote_create_with_fetchspec';
function git_remote_create_anonymous(var out:Pgit_remote; var repo:Tgit_repository; url:pcchar):Tcint;cdecl;external External_library name 'git_remote_create_anonymous';
function git_remote_create_detached(var out:Pgit_remote; url:pcchar):Tcint;cdecl;external External_library name 'git_remote_create_detached';
function git_remote_lookup(var out:Pgit_remote; var repo:Tgit_repository; name:pcchar):Tcint;cdecl;external External_library name 'git_remote_lookup';
function git_remote_dup(var dest:Pgit_remote; var source:Tgit_remote):Tcint;cdecl;external External_library name 'git_remote_dup';
function git_remote_owner(var remote:Tgit_remote):Pgit_repository;cdecl;external External_library name 'git_remote_owner';
function git_remote_name(var remote:Tgit_remote):pcchar;cdecl;external External_library name 'git_remote_name';
function git_remote_url(var remote:Tgit_remote):pcchar;cdecl;external External_library name 'git_remote_url';
function git_remote_pushurl(var remote:Tgit_remote):pcchar;cdecl;external External_library name 'git_remote_pushurl';
function git_remote_set_url(var repo:Tgit_repository; remote:pcchar; url:pcchar):Tcint;cdecl;external External_library name 'git_remote_set_url';
function git_remote_set_pushurl(var repo:Tgit_repository; remote:pcchar; url:pcchar):Tcint;cdecl;external External_library name 'git_remote_set_pushurl';
function git_remote_add_fetch(var repo:Tgit_repository; remote:pcchar; refspec:pcchar):Tcint;cdecl;external External_library name 'git_remote_add_fetch';
function git_remote_get_fetch_refspecs(var array:Tgit_strarray; var remote:Tgit_remote):Tcint;cdecl;external External_library name 'git_remote_get_fetch_refspecs';
function git_remote_add_push(var repo:Tgit_repository; remote:pcchar; refspec:pcchar):Tcint;cdecl;external External_library name 'git_remote_add_push';
function git_remote_get_push_refspecs(var array:Tgit_strarray; var remote:Tgit_remote):Tcint;cdecl;external External_library name 'git_remote_get_push_refspecs';
function git_remote_refspec_count(var remote:Tgit_remote):Tsize_t;cdecl;external External_library name 'git_remote_refspec_count';
function git_remote_get_refspec(var remote:Tgit_remote; n:Tsize_t):Pgit_refspec;cdecl;external External_library name 'git_remote_get_refspec';
function git_remote_connect(var remote:Tgit_remote; direction:Tgit_direction; var callbacks:Tgit_remote_callbacks; var proxy_opts:Tgit_proxy_options; var custom_headers:Tgit_strarray):Tcint;cdecl;external External_library name 'git_remote_connect';
function git_remote_ls(var out:PPgit_remote_head; var size:Tsize_t; var remote:Tgit_remote):Tcint;cdecl;external External_library name 'git_remote_ls';
function git_remote_connected(var remote:Tgit_remote):Tcint;cdecl;external External_library name 'git_remote_connected';
function git_remote_stop(var remote:Tgit_remote):Tcint;cdecl;external External_library name 'git_remote_stop';
function git_remote_disconnect(var remote:Tgit_remote):Tcint;cdecl;external External_library name 'git_remote_disconnect';
procedure git_remote_free(var remote:Tgit_remote);cdecl;external External_library name 'git_remote_free';
function git_remote_list(var out:Tgit_strarray; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_remote_list';
type
  Pgit_remote_completion_t = ^Tgit_remote_completion_t;
  Tgit_remote_completion_t =  Longint;
  TFunction_typeTgit_remote_completion_tDataPointerTcint = function (_type:Tgit_remote_completion_t; data:pointer):Tcint;
  Const
    GIT_REMOTE_COMPLETION_DOWNLOAD = 0;
    GIT_REMOTE_COMPLETION_INDEXING = 1;
    GIT_REMOTE_COMPLETION_ERROR = 2;

type

  Tgit_push_transfer_progress_cb = function (current:Tcuint; total:Tcuint; bytes:Tsize_t; payload:pointer):Tcint;cdecl;

  Pgit_push_update = ^Tgit_push_update;
  Tgit_push_update = record
      src_refname : pcchar;
      dst_refname : pcchar;
      src : Tgit_oid;
      dst : Tgit_oid;
    end;

  Tgit_push_negotiation = function (var updates:Pgit_push_update; len:Tsize_t; payload:pointer):Tcint;cdecl;

  Tgit_push_update_reference_cb = function (refname:pcchar; status:pcchar; data:pointer):Tcint;cdecl;

  Tgit_url_resolve_cb = function (var url_resolved:Tgit_buf; url:pcchar; direction:Tcint; payload:pointer):Tcint;cdecl;
  Pgit_remote_callbacks = ^Tgit_remote_callbacks;
  Tgit_remote_callbacks = record
      version : Tcuint;cdecl;
      sideband_progress : Tgit_transport_message_cb;
      completion : TFunction_typeTgit_remote_completion_tDataPointerTcint;cdecl;
      credentials : Tgit_credential_acquire_cb;
      certificate_check : Tgit_transport_certificate_check_cb;
      transfer_progress : Tgit_indexer_progress_cb;
      update_tips : TFunctionRefnamePccharVarATgit_oidVarBTgit_oidDataPointerTcint;cdecl;
      pack_progress : Tgit_packbuilder_progress;
      push_transfer_progress : Tgit_push_transfer_progress_cb;
      push_update_reference : Tgit_push_update_reference_cb;
      push_negotiation : Tgit_push_negotiation;
      transport : Tgit_transport_cb;
      payload : pointer;
      resolve_url : Tgit_url_resolve_cb;
    end;


function git_remote_init_callbacks(var opts:Tgit_remote_callbacks; version:Tcuint):Tcint;cdecl;external External_library name 'git_remote_init_callbacks';
type
  Pgit_fetch_prune_t = ^Tgit_fetch_prune_t;
  Tgit_fetch_prune_t =  Longint;
  Const
    GIT_FETCH_PRUNE_UNSPECIFIED = 0;
    GIT_FETCH_PRUNE = 1;
    GIT_FETCH_NO_PRUNE = 2;

type
  Pgit_remote_autotag_option_t = ^Tgit_remote_autotag_option_t;
  Tgit_remote_autotag_option_t =  Longint;
  Const
    GIT_REMOTE_DOWNLOAD_TAGS_UNSPECIFIED = 0;
    GIT_REMOTE_DOWNLOAD_TAGS_AUTO = 1;
    GIT_REMOTE_DOWNLOAD_TAGS_NONE = 2;
    GIT_REMOTE_DOWNLOAD_TAGS_ALL = 3;

type
  Pgit_fetch_options = ^Tgit_fetch_options;
  Tgit_fetch_options = record
      version : Tcint;
      callbacks : Tgit_remote_callbacks;
      prune : Tgit_fetch_prune_t;
      update_fetchhead : Tcint;
      download_tags : Tgit_remote_autotag_option_t;
      proxy_opts : Tgit_proxy_options;
      custom_headers : Tgit_strarray;
    end;

function git_fetch_options_init(var opts:Tgit_fetch_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_fetch_options_init';
type
  Pgit_push_options = ^Tgit_push_options;
  Tgit_push_options = record
      version : Tcuint;
      pb_parallelism : Tcuint;
      callbacks : Tgit_remote_callbacks;
      proxy_opts : Tgit_proxy_options;
      custom_headers : Tgit_strarray;
    end;

function git_push_options_init(var opts:Tgit_push_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_push_options_init';
function git_remote_download(var remote:Tgit_remote; var refspecs:Tgit_strarray; var opts:Tgit_fetch_options):Tcint;cdecl;external External_library name 'git_remote_download';
function git_remote_upload(var remote:Tgit_remote; var refspecs:Tgit_strarray; var opts:Tgit_push_options):Tcint;cdecl;external External_library name 'git_remote_upload';
function git_remote_update_tips(var remote:Tgit_remote; var callbacks:Tgit_remote_callbacks; update_fetchhead:Tcint; download_tags:Tgit_remote_autotag_option_t; reflog_message:pcchar):Tcint;cdecl;external External_library name 'git_remote_update_tips';
function git_remote_fetch(var remote:Tgit_remote; var refspecs:Tgit_strarray; var opts:Tgit_fetch_options; reflog_message:pcchar):Tcint;cdecl;external External_library name 'git_remote_fetch';
function git_remote_prune(var remote:Tgit_remote; var callbacks:Tgit_remote_callbacks):Tcint;cdecl;external External_library name 'git_remote_prune';
function git_remote_push(var remote:Tgit_remote; var refspecs:Tgit_strarray; var opts:Tgit_push_options):Tcint;cdecl;external External_library name 'git_remote_push';
function git_remote_stats(var remote:Tgit_remote):Pgit_indexer_progress;cdecl;external External_library name 'git_remote_stats';
function git_remote_autotag(var remote:Tgit_remote):Tgit_remote_autotag_option_t;cdecl;external External_library name 'git_remote_autotag';
function git_remote_set_autotag(var repo:Tgit_repository; remote:pcchar; value:Tgit_remote_autotag_option_t):Tcint;cdecl;external External_library name 'git_remote_set_autotag';
function git_remote_prune_refs(var remote:Tgit_remote):Tcint;cdecl;external External_library name 'git_remote_prune_refs';
function git_remote_rename(var problems:Tgit_strarray; var repo:Tgit_repository; name:pcchar; new_name:pcchar):Tcint;cdecl;external External_library name 'git_remote_rename';
function git_remote_is_valid_name(remote_name:pcchar):Tcint;cdecl;external External_library name 'git_remote_is_valid_name';
function git_remote_delete(var repo:Tgit_repository; name:pcchar):Tcint;cdecl;external External_library name 'git_remote_delete';
function git_remote_default_branch(var out:Tgit_buf; var remote:Tgit_remote):Tcint;cdecl;external External_library name 'git_remote_default_branch';
type
  Pgit_clone_local_t = ^Tgit_clone_local_t;
  Tgit_clone_local_t =  Longint;
  Const
    GIT_CLONE_LOCAL_AUTO = 0;
    GIT_CLONE_LOCAL = 1;
    GIT_CLONE_NO_LOCAL = 2;
    GIT_CLONE_LOCAL_NO_LINKS = 3;

type

  Tgit_remote_create_cb = function (var out:Pgit_remote; var repo:Tgit_repository; name:pcchar; url:pcchar; payload:pointer):Tcint;cdecl;

  Tgit_repository_create_cb = function (var out:Pgit_repository; path:pcchar; bare:Tcint; payload:pointer):Tcint;cdecl;

  Pgit_clone_options = ^Tgit_clone_options;
  Tgit_clone_options = record
      version : Tcuint;
      checkout_opts : Tgit_checkout_options;
      fetch_opts : Tgit_fetch_options;
      bare : Tcint;
      local : Tgit_clone_local_t;
      checkout_branch : pcchar;
      repository_cb : Tgit_repository_create_cb;
      repository_cb_payload : pointer;
      remote_cb : Tgit_remote_create_cb;
      remote_cb_payload : pointer;
    end;

function git_clone_options_init(var opts:Tgit_clone_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_clone_options_init';
function git_clone(var out:Pgit_repository; url:pcchar; local_path:pcchar; var options:Tgit_clone_options):Tcint;cdecl;external External_library name 'git_clone';
function git_commit_lookup(var commit:Pgit_commit; var repo:Tgit_repository; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_commit_lookup';
function git_commit_lookup_prefix(var commit:Pgit_commit; var repo:Tgit_repository; var id:Tgit_oid; len:Tsize_t):Tcint;cdecl;external External_library name 'git_commit_lookup_prefix';
procedure git_commit_free(var commit:Tgit_commit);cdecl;external External_library name 'git_commit_free';
function git_commit_id(var commit:Tgit_commit):Pgit_oid;cdecl;external External_library name 'git_commit_id';
function git_commit_owner(var commit:Tgit_commit):Pgit_repository;cdecl;external External_library name 'git_commit_owner';
function git_commit_message_encoding(var commit:Tgit_commit):pcchar;cdecl;external External_library name 'git_commit_message_encoding';
function git_commit_message(var commit:Tgit_commit):pcchar;cdecl;external External_library name 'git_commit_message';
function git_commit_message_raw(var commit:Tgit_commit):pcchar;cdecl;external External_library name 'git_commit_message_raw';
function git_commit_summary(var commit:Tgit_commit):pcchar;cdecl;external External_library name 'git_commit_summary';
function git_commit_body(var commit:Tgit_commit):pcchar;cdecl;external External_library name 'git_commit_body';
function git_commit_time(var commit:Tgit_commit):Tgit_time_t;cdecl;external External_library name 'git_commit_time';
function git_commit_time_offset(var commit:Tgit_commit):Tcint;cdecl;external External_library name 'git_commit_time_offset';
function git_commit_committer(var commit:Tgit_commit):Pgit_signature;cdecl;external External_library name 'git_commit_committer';
function git_commit_author(var commit:Tgit_commit):Pgit_signature;cdecl;external External_library name 'git_commit_author';
function git_commit_committer_with_mailmap(var out:Pgit_signature; var commit:Tgit_commit; var mailmap:Tgit_mailmap):Tcint;cdecl;external External_library name 'git_commit_committer_with_mailmap';
function git_commit_author_with_mailmap(var out:Pgit_signature; var commit:Tgit_commit; var mailmap:Tgit_mailmap):Tcint;cdecl;external External_library name 'git_commit_author_with_mailmap';
function git_commit_raw_header(var commit:Tgit_commit):pcchar;cdecl;external External_library name 'git_commit_raw_header';
function git_commit_tree(var tree_out:Pgit_tree; var commit:Tgit_commit):Tcint;cdecl;external External_library name 'git_commit_tree';
function git_commit_tree_id(var commit:Tgit_commit):Pgit_oid;cdecl;external External_library name 'git_commit_tree_id';
function git_commit_parentcount(var commit:Tgit_commit):Tcuint;cdecl;external External_library name 'git_commit_parentcount';
function git_commit_parent(var out:Pgit_commit; var commit:Tgit_commit; n:Tcuint):Tcint;cdecl;external External_library name 'git_commit_parent';
function git_commit_parent_id(var commit:Tgit_commit; n:Tcuint):Pgit_oid;cdecl;external External_library name 'git_commit_parent_id';
function git_commit_nth_gen_ancestor(var ancestor:Pgit_commit; var commit:Tgit_commit; n:Tcuint):Tcint;cdecl;external External_library name 'git_commit_nth_gen_ancestor';
function git_commit_header_field(var out:Tgit_buf; var commit:Tgit_commit; field:pcchar):Tcint;cdecl;external External_library name 'git_commit_header_field';
function git_commit_extract_signature(var signature:Tgit_buf; var signed_data:Tgit_buf; var repo:Tgit_repository; var commit_id:Tgit_oid; field:pcchar):Tcint;cdecl;external External_library name 'git_commit_extract_signature';
function git_commit_create(var id:Tgit_oid; var repo:Tgit_repository; update_ref:pcchar; var author:Tgit_signature; var committer:Tgit_signature; 
           message_encoding:pcchar; message:pcchar; var tree:Tgit_tree; parent_count:Tsize_t; var parents:Pgit_commit):Tcint;cdecl;external External_library name 'git_commit_create';
function git_commit_create_v(var id:Tgit_oid; var repo:Tgit_repository; update_ref:pcchar; var author:Tgit_signature; var committer:Tgit_signature; 
           message_encoding:pcchar; message:pcchar; var tree:Tgit_tree; parent_count:Tsize_t; args:array of const):Tcint;cdecl;external External_library name 'git_commit_create_v';
function git_commit_create_v(var id:Tgit_oid; var repo:Tgit_repository; update_ref:pcchar; var author:Tgit_signature; var committer:Tgit_signature; 
           message_encoding:pcchar; message:pcchar; var tree:Tgit_tree; parent_count:Tsize_t):Tcint;cdecl;external External_library name 'git_commit_create_v';
function git_commit_amend(var id:Tgit_oid; var commit_to_amend:Tgit_commit; update_ref:pcchar; var author:Tgit_signature; var committer:Tgit_signature; 
           message_encoding:pcchar; message:pcchar; var tree:Tgit_tree):Tcint;cdecl;external External_library name 'git_commit_amend';
function git_commit_create_buffer(var out:Tgit_buf; var repo:Tgit_repository; var author:Tgit_signature; var committer:Tgit_signature; message_encoding:pcchar; 
           message:pcchar; var tree:Tgit_tree; parent_count:Tsize_t; var parents:Pgit_commit):Tcint;cdecl;external External_library name 'git_commit_create_buffer';
function git_commit_create_with_signature(var out:Tgit_oid; var repo:Tgit_repository; commit_content:pcchar; signature:pcchar; signature_field:pcchar):Tcint;cdecl;external External_library name 'git_commit_create_with_signature';
function git_commit_dup(var out:Pgit_commit; var source:Tgit_commit):Tcint;cdecl;external External_library name 'git_commit_dup';
type

  Tgit_commit_signing_cb = function (var signature:Tgit_buf; var signature_field:Tgit_buf; commit_content:pcchar; payload:pointer):Tcint;cdecl;

  Pgit_config_level_t = ^Tgit_config_level_t;
  Tgit_config_level_t =  Longint;
  Const
    GIT_CONFIG_LEVEL_PROGRAMDATA = 1;
    GIT_CONFIG_LEVEL_SYSTEM = 2;
    GIT_CONFIG_LEVEL_XDG = 3;
    GIT_CONFIG_LEVEL_GLOBAL = 4;
    GIT_CONFIG_LEVEL_LOCAL = 5;
    GIT_CONFIG_LEVEL_APP = 6;
    GIT_CONFIG_HIGHEST_LEVEL = -(1);

type
  Pgit_config_entry = ^Tgit_config_entry;
  Tgit_config_entry = record
      name : pcchar;
      value : pcchar;
      include_depth : Tcuint;
      level : Tgit_config_level_t;
      free : TProcedureVarEntryTgit_config_entry;cdecl;
      payload : pointer;
    end;
type
  TProcedureVarEntryTgit_config_entry = procedure (var entry:Tgit_config_entry);

procedure git_config_entry_free(para1:Pgit_config_entry);cdecl;external External_library name 'git_config_entry_free';
type

  Tgit_config_foreach_cb = function (var entry:Tgit_config_entry; payload:pointer):Tcint;cdecl;

  Pgit_configmap_t = ^Tgit_configmap_t;
  Tgit_configmap_t =  Longint;
  Const
    GIT_CONFIGMAP_FALSE = 0;
    GIT_CONFIGMAP_TRUE = 1;
    GIT_CONFIGMAP_INT32 = 2;
    GIT_CONFIGMAP_STRING = 3;

type
  Pgit_configmap = ^Tgit_configmap;
  Tgit_configmap = record
      _type : Tgit_configmap_t;
      str_match : pcchar;
      map_value : Tcint;
    end;

function git_config_find_global(var out:Tgit_buf):Tcint;cdecl;external External_library name 'git_config_find_global';
function git_config_find_xdg(var out:Tgit_buf):Tcint;cdecl;external External_library name 'git_config_find_xdg';
function git_config_find_system(var out:Tgit_buf):Tcint;cdecl;external External_library name 'git_config_find_system';
function git_config_find_programdata(var out:Tgit_buf):Tcint;cdecl;external External_library name 'git_config_find_programdata';
function git_config_open_default(var out:Pgit_config):Tcint;cdecl;external External_library name 'git_config_open_default';
function git_config_new(var out:Pgit_config):Tcint;cdecl;external External_library name 'git_config_new';
function git_config_add_file_ondisk(var cfg:Tgit_config; path:pcchar; level:Tgit_config_level_t; var repo:Tgit_repository; force:Tcint):Tcint;cdecl;external External_library name 'git_config_add_file_ondisk';
function git_config_open_ondisk(var out:Pgit_config; path:pcchar):Tcint;cdecl;external External_library name 'git_config_open_ondisk';
function git_config_open_level(var out:Pgit_config; var parent:Tgit_config; level:Tgit_config_level_t):Tcint;cdecl;external External_library name 'git_config_open_level';
function git_config_open_global(var out:Pgit_config; var config:Tgit_config):Tcint;cdecl;external External_library name 'git_config_open_global';
function git_config_snapshot(var out:Pgit_config; var config:Tgit_config):Tcint;cdecl;external External_library name 'git_config_snapshot';
procedure git_config_free(var cfg:Tgit_config);cdecl;external External_library name 'git_config_free';
function git_config_get_entry(var out:Pgit_config_entry; var cfg:Tgit_config; name:pcchar):Tcint;cdecl;external External_library name 'git_config_get_entry';
function git_config_get_int32(var out:Tint32_t; var cfg:Tgit_config; name:pcchar):Tcint;cdecl;external External_library name 'git_config_get_int32';
function git_config_get_int64(var out:Tint64_t; var cfg:Tgit_config; name:pcchar):Tcint;cdecl;external External_library name 'git_config_get_int64';
function git_config_get_bool(var out:Tcint; var cfg:Tgit_config; name:pcchar):Tcint;cdecl;external External_library name 'git_config_get_bool';
function git_config_get_path(var out:Tgit_buf; var cfg:Tgit_config; name:pcchar):Tcint;cdecl;external External_library name 'git_config_get_path';
function git_config_get_string(out:Ppcchar; var cfg:Tgit_config; name:pcchar):Tcint;cdecl;external External_library name 'git_config_get_string';
function git_config_get_string_buf(var out:Tgit_buf; var cfg:Tgit_config; name:pcchar):Tcint;cdecl;external External_library name 'git_config_get_string_buf';
function git_config_get_multivar_foreach(var cfg:Tgit_config; name:pcchar; regexp:pcchar; callback:Tgit_config_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_config_get_multivar_foreach';
function git_config_multivar_iterator_new(var out:Pgit_config_iterator; var cfg:Tgit_config; name:pcchar; regexp:pcchar):Tcint;cdecl;external External_library name 'git_config_multivar_iterator_new';
function git_config_next(var entry:Pgit_config_entry; var iter:Tgit_config_iterator):Tcint;cdecl;external External_library name 'git_config_next';
procedure git_config_iterator_free(var iter:Tgit_config_iterator);cdecl;external External_library name 'git_config_iterator_free';
function git_config_set_int32(var cfg:Tgit_config; name:pcchar; value:Tint32_t):Tcint;cdecl;external External_library name 'git_config_set_int32';
function git_config_set_int64(var cfg:Tgit_config; name:pcchar; value:Tint64_t):Tcint;cdecl;external External_library name 'git_config_set_int64';
function git_config_set_bool(var cfg:Tgit_config; name:pcchar; value:Tcint):Tcint;cdecl;external External_library name 'git_config_set_bool';
function git_config_set_string(var cfg:Tgit_config; name:pcchar; value:pcchar):Tcint;cdecl;external External_library name 'git_config_set_string';
function git_config_set_multivar(var cfg:Tgit_config; name:pcchar; regexp:pcchar; value:pcchar):Tcint;cdecl;external External_library name 'git_config_set_multivar';
function git_config_delete_entry(var cfg:Tgit_config; name:pcchar):Tcint;cdecl;external External_library name 'git_config_delete_entry';
function git_config_delete_multivar(var cfg:Tgit_config; name:pcchar; regexp:pcchar):Tcint;cdecl;external External_library name 'git_config_delete_multivar';
function git_config_foreach(var cfg:Tgit_config; callback:Tgit_config_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_config_foreach';
function git_config_iterator_new(var out:Pgit_config_iterator; var cfg:Tgit_config):Tcint;cdecl;external External_library name 'git_config_iterator_new';
function git_config_iterator_glob_new(var out:Pgit_config_iterator; var cfg:Tgit_config; regexp:pcchar):Tcint;cdecl;external External_library name 'git_config_iterator_glob_new';
function git_config_foreach_match(var cfg:Tgit_config; regexp:pcchar; callback:Tgit_config_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_config_foreach_match';
function git_config_get_mapped(var out:Tcint; var cfg:Tgit_config; name:pcchar; var maps:Tgit_configmap; map_n:Tsize_t):Tcint;cdecl;external External_library name 'git_config_get_mapped';
function git_config_lookup_map_value(var out:Tcint; var maps:Tgit_configmap; map_n:Tsize_t; value:pcchar):Tcint;cdecl;external External_library name 'git_config_lookup_map_value';
function git_config_parse_bool(var out:Tcint; value:pcchar):Tcint;cdecl;external External_library name 'git_config_parse_bool';
function git_config_parse_int32(var out:Tint32_t; value:pcchar):Tcint;cdecl;external External_library name 'git_config_parse_int32';
function git_config_parse_int64(var out:Tint64_t; value:pcchar):Tcint;cdecl;external External_library name 'git_config_parse_int64';
function git_config_parse_path(var out:Tgit_buf; value:pcchar):Tcint;cdecl;external External_library name 'git_config_parse_path';
function git_config_backend_foreach_match(var backend:Tgit_config_backend; regexp:pcchar; callback:Tgit_config_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_config_backend_foreach_match';
function git_config_lock(var tx:Pgit_transaction; var cfg:Tgit_config):Tcint;cdecl;external External_library name 'git_config_lock';
type
  Pgit_describe_strategy_t = ^Tgit_describe_strategy_t;
  Tgit_describe_strategy_t =  Longint;
  Const
    GIT_DESCRIBE_DEFAULT = 0;
    GIT_DESCRIBE_TAGS = 1;
    GIT_DESCRIBE_ALL = 2;

type
  Pgit_describe_options = ^Tgit_describe_options;
  Tgit_describe_options = record
      version : Tcuint;
      max_candidates_tags : Tcuint;
      describe_strategy : Tcuint;
      pattern : pcchar;
      only_follow_first_parent : Tcint;
      show_commit_oid_as_fallback : Tcint;
    end;

function git_describe_options_init(var opts:Tgit_describe_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_describe_options_init';
type
  Pgit_describe_format_options = ^Tgit_describe_format_options;
  Tgit_describe_format_options = record
      version : Tcuint;
      abbreviated_size : Tcuint;
      always_use_long_format : Tcint;
      dirty_suffix : pcchar;
    end;

function git_describe_format_options_init(var opts:Tgit_describe_format_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_describe_format_options_init';


function git_describe_commit(var result:Pgit_describe_result; var committish:Tgit_object; var opts:Tgit_describe_options):Tcint;cdecl;external External_library name 'git_describe_commit';
function git_describe_workdir(var out:Pgit_describe_result; var repo:Tgit_repository; var opts:Tgit_describe_options):Tcint;cdecl;external External_library name 'git_describe_workdir';
function git_describe_format(var out:Tgit_buf; var result:Tgit_describe_result; var opts:Tgit_describe_format_options):Tcint;cdecl;external External_library name 'git_describe_format';
procedure git_describe_result_free(var result:Tgit_describe_result);cdecl;external External_library name 'git_describe_result_free';
type
  Pgit_error_code = ^Tgit_error_code;
  Tgit_error_code =  Longint;
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
  Pgit_error = ^Tgit_error;
  Tgit_error = record
      message : pcchar;
      klass : Tcint;
    end;

  Pgit_error_t = ^Tgit_error_t;
  Tgit_error_t =  Longint;
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
function git_error_set_str(error_class:Tcint; _string:pcchar):Tcint;cdecl;external External_library name 'git_error_set_str';
procedure git_error_set_oom;cdecl;external External_library name 'git_error_set_oom';
type
  Pgit_filter_mode_t = ^Tgit_filter_mode_t;
  Tgit_filter_mode_t =  Longint;
  Const
    GIT_FILTER_TO_WORKTREE = 0;
    GIT_FILTER_SMUDGE = GIT_FILTER_TO_WORKTREE;
    GIT_FILTER_TO_ODB = 1;
    GIT_FILTER_CLEAN = GIT_FILTER_TO_ODB;

type
  Pgit_filter_flag_t = ^Tgit_filter_flag_t;
  Tgit_filter_flag_t =  Longint;
  Const
    GIT_FILTER_DEFAULT = 0;
    GIT_FILTER_ALLOW_UNSAFE = 1 shl 0;
    GIT_FILTER_NO_SYSTEM_ATTRIBUTES = 1 shl 1;
    GIT_FILTER_ATTRIBUTES_FROM_HEAD = 1 shl 2;



function git_filter_list_load(var filters:Pgit_filter_list; var repo:Tgit_repository; var blob:Tgit_blob; path:pcchar; mode:Tgit_filter_mode_t; 
           flags:Tuint32_t):Tcint;cdecl;external External_library name 'git_filter_list_load';
function git_filter_list_contains(var filters:Tgit_filter_list; name:pcchar):Tcint;cdecl;external External_library name 'git_filter_list_contains';
function git_filter_list_apply_to_data(var out:Tgit_buf; var filters:Tgit_filter_list; var in:Tgit_buf):Tcint;cdecl;external External_library name 'git_filter_list_apply_to_data';
function git_filter_list_apply_to_file(var out:Tgit_buf; var filters:Tgit_filter_list; var repo:Tgit_repository; path:pcchar):Tcint;cdecl;external External_library name 'git_filter_list_apply_to_file';
function git_filter_list_apply_to_blob(var out:Tgit_buf; var filters:Tgit_filter_list; var blob:Tgit_blob):Tcint;cdecl;external External_library name 'git_filter_list_apply_to_blob';
function git_filter_list_stream_data(var filters:Tgit_filter_list; var data:Tgit_buf; var target:Tgit_writestream):Tcint;cdecl;external External_library name 'git_filter_list_stream_data';
function git_filter_list_stream_file(var filters:Tgit_filter_list; var repo:Tgit_repository; path:pcchar; var target:Tgit_writestream):Tcint;cdecl;external External_library name 'git_filter_list_stream_file';
function git_filter_list_stream_blob(var filters:Tgit_filter_list; var blob:Tgit_blob; var target:Tgit_writestream):Tcint;cdecl;external External_library name 'git_filter_list_stream_blob';
procedure git_filter_list_free(var filters:Tgit_filter_list);cdecl;external External_library name 'git_filter_list_free';
function git_libgit2_init:Tcint;cdecl;external External_library name 'git_libgit2_init';
function git_libgit2_shutdown:Tcint;cdecl;external External_library name 'git_libgit2_shutdown';
function git_graph_ahead_behind(var ahead:Tsize_t; var behind:Tsize_t; var repo:Tgit_repository; var local:Tgit_oid; var upstream:Tgit_oid):Tcint;cdecl;external External_library name 'git_graph_ahead_behind';
function git_graph_descendant_of(var repo:Tgit_repository; var commit:Tgit_oid; var ancestor:Tgit_oid):Tcint;cdecl;external External_library name 'git_graph_descendant_of';
function git_ignore_add_rule(var repo:Tgit_repository; rules:pcchar):Tcint;cdecl;external External_library name 'git_ignore_add_rule';
function git_ignore_clear_internal_rules(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_ignore_clear_internal_rules';
function git_ignore_path_is_ignored(var ignored:Tcint; var repo:Tgit_repository; path:pcchar):Tcint;cdecl;external External_library name 'git_ignore_path_is_ignored';
function git_mailmap_new(var out:Pgit_mailmap):Tcint;cdecl;external External_library name 'git_mailmap_new';
procedure git_mailmap_free(var mm:Tgit_mailmap);cdecl;external External_library name 'git_mailmap_free';
function git_mailmap_add_entry(var mm:Tgit_mailmap; real_name:pcchar; real_email:pcchar; replace_name:pcchar; replace_email:pcchar):Tcint;cdecl;external External_library name 'git_mailmap_add_entry';
function git_mailmap_from_buffer(var out:Pgit_mailmap; buf:pcchar; len:Tsize_t):Tcint;cdecl;external External_library name 'git_mailmap_from_buffer';
function git_mailmap_from_repository(var out:Pgit_mailmap; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_mailmap_from_repository';
function git_mailmap_resolve(real_name:Ppcchar; real_email:Ppcchar; var mm:Tgit_mailmap; name:pcchar; email:pcchar):Tcint;cdecl;external External_library name 'git_mailmap_resolve';
function git_mailmap_resolve_signature(var out:Pgit_signature; var mm:Tgit_mailmap; var sig:Tgit_signature):Tcint;cdecl;external External_library name 'git_mailmap_resolve_signature';
function git_message_prettify(var out:Tgit_buf; message:pcchar; strip_comments:Tcint; comment_char:Tcchar):Tcint;cdecl;external External_library name 'git_message_prettify';
type
  Pgit_message_trailer = ^Tgit_message_trailer;
  Tgit_message_trailer = record
      key : pcchar;
      value : pcchar;
    end;

  Pgit_message_trailer_array = ^Tgit_message_trailer_array;
  Tgit_message_trailer_array = record
      trailers : Pgit_message_trailer;
      count : Tsize_t;
      _trailer_block : pcchar;
    end;

function git_message_trailers(var arr:Tgit_message_trailer_array; message:pcchar):Tcint;cdecl;external External_library name 'git_message_trailers';
procedure git_message_trailer_array_free(var arr:Tgit_message_trailer_array);cdecl;external External_library name 'git_message_trailer_array_free';
type

  Tgit_note_foreach_cb = function (var blob_id:Tgit_oid; var annotated_object_id:Tgit_oid; payload:pointer):Tcint;cdecl;
  Tgit_iterator = Tgit_note_iterator;

function git_note_iterator_new(var out:Pgit_note_iterator; var repo:Tgit_repository; notes_ref:pcchar):Tcint;cdecl;external External_library name 'git_note_iterator_new';
function git_note_commit_iterator_new(var out:Pgit_note_iterator; var notes_commit:Tgit_commit):Tcint;cdecl;external External_library name 'git_note_commit_iterator_new';
procedure git_note_iterator_free(var it:Tgit_note_iterator);cdecl;external External_library name 'git_note_iterator_free';
function git_note_next(var note_id:Tgit_oid; var annotated_id:Tgit_oid; var it:Tgit_note_iterator):Tcint;cdecl;external External_library name 'git_note_next';
function git_note_read(var out:Pgit_note; var repo:Tgit_repository; notes_ref:pcchar; var oid:Tgit_oid):Tcint;cdecl;external External_library name 'git_note_read';
function git_note_commit_read(var out:Pgit_note; var repo:Tgit_repository; var notes_commit:Tgit_commit; var oid:Tgit_oid):Tcint;cdecl;external External_library name 'git_note_commit_read';
function git_note_author(var note:Tgit_note):Pgit_signature;cdecl;external External_library name 'git_note_author';
function git_note_committer(var note:Tgit_note):Pgit_signature;cdecl;external External_library name 'git_note_committer';
function git_note_message(var note:Tgit_note):pcchar;cdecl;external External_library name 'git_note_message';
function git_note_id(var note:Tgit_note):Pgit_oid;cdecl;external External_library name 'git_note_id';
function git_note_create(var out:Tgit_oid; var repo:Tgit_repository; notes_ref:pcchar; var author:Tgit_signature; var committer:Tgit_signature; 
           var oid:Tgit_oid; note:pcchar; force:Tcint):Tcint;cdecl;external External_library name 'git_note_create';
function git_note_commit_create(var notes_commit_out:Tgit_oid; var notes_blob_out:Tgit_oid; var repo:Tgit_repository; var parent:Tgit_commit; var author:Tgit_signature; 
           var committer:Tgit_signature; var oid:Tgit_oid; note:pcchar; allow_note_overwrite:Tcint):Tcint;cdecl;external External_library name 'git_note_commit_create';
function git_note_remove(var repo:Tgit_repository; notes_ref:pcchar; var author:Tgit_signature; var committer:Tgit_signature; var oid:Tgit_oid):Tcint;cdecl;external External_library name 'git_note_remove';
function git_note_commit_remove(var notes_commit_out:Tgit_oid; var repo:Tgit_repository; var notes_commit:Tgit_commit; var author:Tgit_signature; var committer:Tgit_signature; 
           var oid:Tgit_oid):Tcint;cdecl;external External_library name 'git_note_commit_remove';
procedure git_note_free(var note:Tgit_note);cdecl;external External_library name 'git_note_free';
function git_note_default_ref(var out:Tgit_buf; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_note_default_ref';
function git_note_foreach(var repo:Tgit_repository; notes_ref:pcchar; note_cb:Tgit_note_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_note_foreach';
type

  Tgit_odb_foreach_cb = function (var id:Tgit_oid; payload:pointer):Tcint;cdecl;

function git_odb_new(var out:Pgit_odb):Tcint;cdecl;external External_library name 'git_odb_new';
function git_odb_open(var out:Pgit_odb; objects_dir:pcchar):Tcint;cdecl;external External_library name 'git_odb_open';
function git_odb_add_disk_alternate(var odb:Tgit_odb; path:pcchar):Tcint;cdecl;external External_library name 'git_odb_add_disk_alternate';
procedure git_odb_free(var db:Tgit_odb);cdecl;external External_library name 'git_odb_free';
function git_odb_read(var out:Pgit_odb_object; var db:Tgit_odb; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_odb_read';
function git_odb_read_prefix(var out:Pgit_odb_object; var db:Tgit_odb; var short_id:Tgit_oid; len:Tsize_t):Tcint;cdecl;external External_library name 'git_odb_read_prefix';
function git_odb_read_header(var len_out:Tsize_t; var type_out:Tgit_object_t; var db:Tgit_odb; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_odb_read_header';
function git_odb_exists(var db:Tgit_odb; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_odb_exists';
function git_odb_exists_prefix(var out:Tgit_oid; var db:Tgit_odb; var short_id:Tgit_oid; len:Tsize_t):Tcint;cdecl;external External_library name 'git_odb_exists_prefix';
type
  Pgit_odb_expand_id = ^Tgit_odb_expand_id;
  Tgit_odb_expand_id = record
      id : Tgit_oid;
      length : Tcushort;
      _type : Tgit_object_t;
    end;

function git_odb_expand_ids(var db:Tgit_odb; var ids:Tgit_odb_expand_id; count:Tsize_t):Tcint;cdecl;external External_library name 'git_odb_expand_ids';
function git_odb_refresh(var db:Tgit_odb):Tcint;cdecl;external External_library name 'git_odb_refresh';
function git_odb_foreach(var db:Tgit_odb; cb:Tgit_odb_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_odb_foreach';
function git_odb_write(var out:Tgit_oid; var odb:Tgit_odb; data:pointer; len:Tsize_t; _type:Tgit_object_t):Tcint;cdecl;external External_library name 'git_odb_write';
function git_odb_open_wstream(var out:Pgit_odb_stream; var db:Tgit_odb; size:Tgit_object_size_t; _type:Tgit_object_t):Tcint;cdecl;external External_library name 'git_odb_open_wstream';
function git_odb_stream_write(var stream:Tgit_odb_stream; buffer:pcchar; len:Tsize_t):Tcint;cdecl;external External_library name 'git_odb_stream_write';
function git_odb_stream_finalize_write(var out:Tgit_oid; var stream:Tgit_odb_stream):Tcint;cdecl;external External_library name 'git_odb_stream_finalize_write';
function git_odb_stream_read(var stream:Tgit_odb_stream; buffer:pcchar; len:Tsize_t):Tcint;cdecl;external External_library name 'git_odb_stream_read';
procedure git_odb_stream_free(var stream:Tgit_odb_stream);cdecl;external External_library name 'git_odb_stream_free';
function git_odb_open_rstream(var out:Pgit_odb_stream; var len:Tsize_t; var _type:Tgit_object_t; var db:Tgit_odb; var oid:Tgit_oid):Tcint;cdecl;external External_library name 'git_odb_open_rstream';
function git_odb_write_pack(var out:Pgit_odb_writepack; var db:Tgit_odb; progress_cb:Tgit_indexer_progress_cb; progress_payload:pointer):Tcint;cdecl;external External_library name 'git_odb_write_pack';
function git_odb_hash(var out:Tgit_oid; data:pointer; len:Tsize_t; _type:Tgit_object_t):Tcint;cdecl;external External_library name 'git_odb_hash';
function git_odb_hashfile(var out:Tgit_oid; path:pcchar; _type:Tgit_object_t):Tcint;cdecl;external External_library name 'git_odb_hashfile';
function git_odb_object_dup(var dest:Pgit_odb_object; var source:Tgit_odb_object):Tcint;cdecl;external External_library name 'git_odb_object_dup';
procedure git_odb_object_free(var object:Tgit_odb_object);cdecl;external External_library name 'git_odb_object_free';
function git_odb_object_id(var object:Tgit_odb_object):Pgit_oid;cdecl;external External_library name 'git_odb_object_id';
function git_odb_object_data(var object:Tgit_odb_object):pointer;cdecl;external External_library name 'git_odb_object_data';
function git_odb_object_size(var object:Tgit_odb_object):Tsize_t;cdecl;external External_library name 'git_odb_object_size';
function git_odb_object_type(var object:Tgit_odb_object):Tgit_object_t;cdecl;external External_library name 'git_odb_object_type';
function git_odb_add_backend(var odb:Tgit_odb; var backend:Tgit_odb_backend; priority:Tcint):Tcint;cdecl;external External_library name 'git_odb_add_backend';
function git_odb_add_alternate(var odb:Tgit_odb; var backend:Tgit_odb_backend; priority:Tcint):Tcint;cdecl;external External_library name 'git_odb_add_alternate';
function git_odb_num_backends(var odb:Tgit_odb):Tsize_t;cdecl;external External_library name 'git_odb_num_backends';
function git_odb_get_backend(var out:Pgit_odb_backend; var odb:Tgit_odb; pos:Tsize_t):Tcint;cdecl;external External_library name 'git_odb_get_backend';
function git_odb_backend_pack(var out:Pgit_odb_backend; objects_dir:pcchar):Tcint;cdecl;external External_library name 'git_odb_backend_pack';
function git_odb_backend_loose(var out:Pgit_odb_backend; objects_dir:pcchar; compression_level:Tcint; do_fsync:Tcint; dir_mode:Tcuint; 
           file_mode:Tcuint):Tcint;cdecl;external External_library name 'git_odb_backend_loose';
function git_odb_backend_one_pack(var out:Pgit_odb_backend; index_file:pcchar):Tcint;cdecl;external External_library name 'git_odb_backend_one_pack';
type
  Pgit_odb_stream_t = ^Tgit_odb_stream_t;
  Tgit_odb_stream_t =  Longint;
  Const
    GIT_STREAM_RDONLY = 1 shl 1;
    GIT_STREAM_WRONLY = 1 shl 2;
    GIT_STREAM_RW = GIT_STREAM_RDONLY or GIT_STREAM_WRONLY;
type
  TProcedureVarStreamTgit_odb_stream = procedure (var stream:Tgit_odb_stream);

type
  Pgit_odb_stream = ^Tgit_odb_stream;
  Tgit_odb_stream = record
      backend : Pgit_odb_backend;
      mode : Tcuint;
      hash_ctx : pointer;
      declared_size : Tgit_object_size_t;
      received_bytes : Tgit_object_size_t;
      read : TFunctionVarStreamTgit_odb_streamBufferPccharLenTsize_tTcint;cdecl;
      write : TFunctionVarStreamTgit_odb_streamBufferPccharLenTsize_tTcint;cdecl;
      finalize_write : TFunctionVarStreamTgit_odb_streamVarOidTgit_oidTcint;cdecl;
      free : TProcedureVarStreamTgit_odb_stream;cdecl;
    end;

  Pgit_odb_writepack = ^Tgit_odb_writepack;
  Tgit_odb_writepack = record
      backend : Pgit_odb_backend;
      append : TFunctionVarWritepackTgit_odb_writepackDataPointerSizeTsize_tVarStatsTgit_indexer_progressTcint;cdecl;
      commit : TFunctionVarWritepackTgit_odb_writepackVarStatsTgit_indexer_progressTcint;cdecl;
      free : TProcedureVarWritepackTgit_odb_writepack;cdecl;
    end;
type
  TProcedureVarWritepackTgit_odb_writepack = procedure (var writepack:Tgit_odb_writepack);


function git_patch_from_diff(var out:Pgit_patch; var diff:Tgit_diff; idx:Tsize_t):Tcint;cdecl;external External_library name 'git_patch_from_diff';
function git_patch_from_blobs(var out:Pgit_patch; var old_blob:Tgit_blob; old_as_path:pcchar; var new_blob:Tgit_blob; new_as_path:pcchar; 
           var opts:Tgit_diff_options):Tcint;cdecl;external External_library name 'git_patch_from_blobs';
function git_patch_from_blob_and_buffer(var out:Pgit_patch; var old_blob:Tgit_blob; old_as_path:pcchar; buffer:pointer; buffer_len:Tsize_t; 
           buffer_as_path:pcchar; var opts:Tgit_diff_options):Tcint;cdecl;external External_library name 'git_patch_from_blob_and_buffer';
function git_patch_from_buffers(var out:Pgit_patch; old_buffer:pointer; old_len:Tsize_t; old_as_path:pcchar; new_buffer:pointer; 
           new_len:Tsize_t; new_as_path:pcchar; var opts:Tgit_diff_options):Tcint;cdecl;external External_library name 'git_patch_from_buffers';
procedure git_patch_free(var patch:Tgit_patch);cdecl;external External_library name 'git_patch_free';
function git_patch_get_delta(var patch:Tgit_patch):Pgit_diff_delta;cdecl;external External_library name 'git_patch_get_delta';
function git_patch_num_hunks(var patch:Tgit_patch):Tsize_t;cdecl;external External_library name 'git_patch_num_hunks';
function git_patch_line_stats(var total_context:Tsize_t; var total_additions:Tsize_t; var total_deletions:Tsize_t; var patch:Tgit_patch):Tcint;cdecl;external External_library name 'git_patch_line_stats';
function git_patch_get_hunk(var out:Pgit_diff_hunk; var lines_in_hunk:Tsize_t; var patch:Tgit_patch; hunk_idx:Tsize_t):Tcint;cdecl;external External_library name 'git_patch_get_hunk';
function git_patch_num_lines_in_hunk(var patch:Tgit_patch; hunk_idx:Tsize_t):Tcint;cdecl;external External_library name 'git_patch_num_lines_in_hunk';
function git_patch_get_line_in_hunk(var out:Pgit_diff_line; var patch:Tgit_patch; hunk_idx:Tsize_t; line_of_hunk:Tsize_t):Tcint;cdecl;external External_library name 'git_patch_get_line_in_hunk';
function git_patch_size(var patch:Tgit_patch; include_context:Tcint; include_hunk_headers:Tcint; include_file_headers:Tcint):Tsize_t;cdecl;external External_library name 'git_patch_size';
function git_patch_print(var patch:Tgit_patch; print_cb:Tgit_diff_line_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_patch_print';
function git_patch_to_buf(var out:Tgit_buf; var patch:Tgit_patch):Tcint;cdecl;external External_library name 'git_patch_to_buf';
type

  Pgit_pathspec_flag_t = ^Tgit_pathspec_flag_t;
  Tgit_pathspec_flag_t =  Longint;
  Const
    GIT_PATHSPEC_DEFAULT = 0;
    GIT_PATHSPEC_IGNORE_CASE = 1 shl 0;
    GIT_PATHSPEC_USE_CASE = 1 shl 1;
    GIT_PATHSPEC_NO_GLOB = 1 shl 2;
    GIT_PATHSPEC_NO_MATCH_ERROR = 1 shl 3;
    GIT_PATHSPEC_FIND_FAILURES = 1 shl 4;
    GIT_PATHSPEC_FAILURES_ONLY = 1 shl 5;


function git_pathspec_new(var out:Pgit_pathspec; var pathspec:Tgit_strarray):Tcint;cdecl;external External_library name 'git_pathspec_new';
procedure git_pathspec_free(var ps:Tgit_pathspec);cdecl;external External_library name 'git_pathspec_free';
function git_pathspec_matches_path(var ps:Tgit_pathspec; flags:Tuint32_t; path:pcchar):Tcint;cdecl;external External_library name 'git_pathspec_matches_path';
function git_pathspec_match_workdir(var out:Pgit_pathspec_match_list; var repo:Tgit_repository; flags:Tuint32_t; var ps:Tgit_pathspec):Tcint;cdecl;external External_library name 'git_pathspec_match_workdir';
function git_pathspec_match_index(var out:Pgit_pathspec_match_list; var index:Tgit_index; flags:Tuint32_t; var ps:Tgit_pathspec):Tcint;cdecl;external External_library name 'git_pathspec_match_index';
function git_pathspec_match_tree(var out:Pgit_pathspec_match_list; var tree:Tgit_tree; flags:Tuint32_t; var ps:Tgit_pathspec):Tcint;cdecl;external External_library name 'git_pathspec_match_tree';
function git_pathspec_match_diff(var out:Pgit_pathspec_match_list; var diff:Tgit_diff; flags:Tuint32_t; var ps:Tgit_pathspec):Tcint;cdecl;external External_library name 'git_pathspec_match_diff';
procedure git_pathspec_match_list_free(var m:Tgit_pathspec_match_list);cdecl;external External_library name 'git_pathspec_match_list_free';
function git_pathspec_match_list_entrycount(var m:Tgit_pathspec_match_list):Tsize_t;cdecl;external External_library name 'git_pathspec_match_list_entrycount';
function git_pathspec_match_list_entry(var m:Tgit_pathspec_match_list; pos:Tsize_t):pcchar;cdecl;external External_library name 'git_pathspec_match_list_entry';
function git_pathspec_match_list_diff_entry(var m:Tgit_pathspec_match_list; pos:Tsize_t):Pgit_diff_delta;cdecl;external External_library name 'git_pathspec_match_list_diff_entry';
function git_pathspec_match_list_failed_entrycount(var m:Tgit_pathspec_match_list):Tsize_t;cdecl;external External_library name 'git_pathspec_match_list_failed_entrycount';
function git_pathspec_match_list_failed_entry(var m:Tgit_pathspec_match_list; pos:Tsize_t):pcchar;cdecl;external External_library name 'git_pathspec_match_list_failed_entry';
type
  Pgit_rebase_options = ^Tgit_rebase_options;
  Tgit_rebase_options = record
      version : Tcuint;
      quiet : Tcint;
      inmemory : Tcint;
      rewrite_notes_ref : pcchar;
      merge_options : Tgit_merge_options;
      checkout_options : Tgit_checkout_options;
      signing_cb : Tgit_commit_signing_cb;
      payload : pointer;
    end;

  Pgit_rebase_operation_t = ^Tgit_rebase_operation_t;
  Tgit_rebase_operation_t =  Longint;
  Const
    GIT_REBASE_OPERATION_PICK = 0;
    GIT_REBASE_OPERATION_REWORD = 1;
    GIT_REBASE_OPERATION_EDIT = 2;
    GIT_REBASE_OPERATION_SQUASH = 3;
    GIT_REBASE_OPERATION_FIXUP = 4;
    GIT_REBASE_OPERATION_EXEC = 5;

type
  Pgit_rebase_operation = ^Tgit_rebase_operation;
  Tgit_rebase_operation = record
      _type : Tgit_rebase_operation_t;
      id : Tgit_oid;
      exec : pcchar;
    end;

function git_rebase_options_init(var opts:Tgit_rebase_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_rebase_options_init';
function git_rebase_init(var out:Pgit_rebase; var repo:Tgit_repository; var branch:Tgit_annotated_commit; var upstream:Tgit_annotated_commit; var onto:Tgit_annotated_commit; 
           var opts:Tgit_rebase_options):Tcint;cdecl;external External_library name 'git_rebase_init';
function git_rebase_open(var out:Pgit_rebase; var repo:Tgit_repository; var opts:Tgit_rebase_options):Tcint;cdecl;external External_library name 'git_rebase_open';
function git_rebase_orig_head_name(var rebase:Tgit_rebase):pcchar;cdecl;external External_library name 'git_rebase_orig_head_name';
function git_rebase_orig_head_id(var rebase:Tgit_rebase):Pgit_oid;cdecl;external External_library name 'git_rebase_orig_head_id';
function git_rebase_onto_name(var rebase:Tgit_rebase):pcchar;cdecl;external External_library name 'git_rebase_onto_name';
function git_rebase_onto_id(var rebase:Tgit_rebase):Pgit_oid;cdecl;external External_library name 'git_rebase_onto_id';
function git_rebase_operation_entrycount(var rebase:Tgit_rebase):Tsize_t;cdecl;external External_library name 'git_rebase_operation_entrycount';
function git_rebase_operation_current(var rebase:Tgit_rebase):Tsize_t;cdecl;external External_library name 'git_rebase_operation_current';
function git_rebase_operation_byindex(var rebase:Tgit_rebase; idx:Tsize_t):Pgit_rebase_operation;cdecl;external External_library name 'git_rebase_operation_byindex';
function git_rebase_next(var operation:Pgit_rebase_operation; var rebase:Tgit_rebase):Tcint;cdecl;external External_library name 'git_rebase_next';
function git_rebase_inmemory_index(var index:Pgit_index; var rebase:Tgit_rebase):Tcint;cdecl;external External_library name 'git_rebase_inmemory_index';
function git_rebase_commit(var id:Tgit_oid; var rebase:Tgit_rebase; var author:Tgit_signature; var committer:Tgit_signature; message_encoding:pcchar; 
           message:pcchar):Tcint;cdecl;external External_library name 'git_rebase_commit';
function git_rebase_abort(var rebase:Tgit_rebase):Tcint;cdecl;external External_library name 'git_rebase_abort';
function git_rebase_finish(var rebase:Tgit_rebase; var signature:Tgit_signature):Tcint;cdecl;external External_library name 'git_rebase_finish';
procedure git_rebase_free(var rebase:Tgit_rebase);cdecl;external External_library name 'git_rebase_free';
function git_refdb_new(var out:Pgit_refdb; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_refdb_new';
function git_refdb_open(var out:Pgit_refdb; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_refdb_open';
function git_refdb_compress(var refdb:Tgit_refdb):Tcint;cdecl;external External_library name 'git_refdb_compress';
procedure git_refdb_free(var refdb:Tgit_refdb);cdecl;external External_library name 'git_refdb_free';
function git_reflog_read(var out:Pgit_reflog; var repo:Tgit_repository; name:pcchar):Tcint;cdecl;external External_library name 'git_reflog_read';
function git_reflog_write(var reflog:Tgit_reflog):Tcint;cdecl;external External_library name 'git_reflog_write';
function git_reflog_append(var reflog:Tgit_reflog; var id:Tgit_oid; var committer:Tgit_signature; msg:pcchar):Tcint;cdecl;external External_library name 'git_reflog_append';
function git_reflog_rename(var repo:Tgit_repository; old_name:pcchar; name:pcchar):Tcint;cdecl;external External_library name 'git_reflog_rename';
function git_reflog_delete(var repo:Tgit_repository; name:pcchar):Tcint;cdecl;external External_library name 'git_reflog_delete';
function git_reflog_entrycount(var reflog:Tgit_reflog):Tsize_t;cdecl;external External_library name 'git_reflog_entrycount';
function git_reflog_entry_byindex(var reflog:Tgit_reflog; idx:Tsize_t):Pgit_reflog_entry;cdecl;external External_library name 'git_reflog_entry_byindex';
function git_reflog_drop(var reflog:Tgit_reflog; idx:Tsize_t; rewrite_previous_entry:Tcint):Tcint;cdecl;external External_library name 'git_reflog_drop';
function git_reflog_entry_id_old(var entry:Tgit_reflog_entry):Pgit_oid;cdecl;external External_library name 'git_reflog_entry_id_old';
function git_reflog_entry_id_new(var entry:Tgit_reflog_entry):Pgit_oid;cdecl;external External_library name 'git_reflog_entry_id_new';
function git_reflog_entry_committer(var entry:Tgit_reflog_entry):Pgit_signature;cdecl;external External_library name 'git_reflog_entry_committer';
function git_reflog_entry_message(var entry:Tgit_reflog_entry):pcchar;cdecl;external External_library name 'git_reflog_entry_message';
procedure git_reflog_free(var reflog:Tgit_reflog);cdecl;external External_library name 'git_reflog_free';
type
  Pgit_reset_t = ^Tgit_reset_t;
  Tgit_reset_t =  Longint;
  Const
    GIT_RESET_SOFT = 1;
    GIT_RESET_MIXED = 2;
    GIT_RESET_HARD = 3;


function git_reset(var repo:Tgit_repository; var target:Tgit_object; reset_type:Tgit_reset_t; var checkout_opts:Tgit_checkout_options):Tcint;cdecl;external External_library name 'git_reset';
function git_reset_from_annotated(var repo:Tgit_repository; var commit:Tgit_annotated_commit; reset_type:Tgit_reset_t; var checkout_opts:Tgit_checkout_options):Tcint;cdecl;external External_library name 'git_reset_from_annotated';
function git_reset_default(var repo:Tgit_repository; var target:Tgit_object; var pathspecs:Tgit_strarray):Tcint;cdecl;external External_library name 'git_reset_default';
type
  Pgit_revert_options = ^Tgit_revert_options;
  Tgit_revert_options = record
      version : Tcuint;
      mainline : Tcuint;
      merge_opts : Tgit_merge_options;
      checkout_opts : Tgit_checkout_options;
    end;

function git_revert_options_init(var opts:Tgit_revert_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_revert_options_init';
function git_revert_commit(var out:Pgit_index; var repo:Tgit_repository; var revert_commit:Tgit_commit; var our_commit:Tgit_commit; mainline:Tcuint; 
           var merge_options:Tgit_merge_options):Tcint;cdecl;external External_library name 'git_revert_commit';
function git_revert(var repo:Tgit_repository; var commit:Tgit_commit; var given_opts:Tgit_revert_options):Tcint;cdecl;external External_library name 'git_revert';
function git_revparse_single(var out:Pgit_object; var repo:Tgit_repository; spec:pcchar):Tcint;cdecl;external External_library name 'git_revparse_single';
function git_revparse_ext(var object_out:Pgit_object; var reference_out:Pgit_reference; var repo:Tgit_repository; spec:pcchar):Tcint;cdecl;external External_library name 'git_revparse_ext';
type
  Pgit_revparse_mode_t = ^Tgit_revparse_mode_t;
  Tgit_revparse_mode_t =  Longint;
  Const
    GIT_REVPARSE_SINGLE = 1 shl 0;
    GIT_REVPARSE_RANGE = 1 shl 1;
    GIT_REVPARSE_MERGE_BASE = 1 shl 2;

type
  Pgit_revspec = ^Tgit_revspec;
  Tgit_revspec = record
      from : Pgit_object;
      to : Pgit_object;
      flags : Tcuint;
    end;

function git_revparse(var revspec:Tgit_revspec; var repo:Tgit_repository; spec:pcchar):Tcint;cdecl;external External_library name 'git_revparse';
type
  Pgit_sort_t = ^Tgit_sort_t;
  Tgit_sort_t =  Longint;
  Const
    GIT_SORT_NONE = 0;
    GIT_SORT_TOPOLOGICAL = 1 shl 0;
    GIT_SORT_TIME = 1 shl 1;
    GIT_SORT_REVERSE = 1 shl 2;


function git_revwalk_new(var out:Pgit_revwalk; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_revwalk_new';
function git_revwalk_reset(var walker:Tgit_revwalk):Tcint;cdecl;external External_library name 'git_revwalk_reset';
function git_revwalk_push(var walk:Tgit_revwalk; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_revwalk_push';
function git_revwalk_push_glob(var walk:Tgit_revwalk; glob:pcchar):Tcint;cdecl;external External_library name 'git_revwalk_push_glob';
function git_revwalk_push_head(var walk:Tgit_revwalk):Tcint;cdecl;external External_library name 'git_revwalk_push_head';
function git_revwalk_hide(var walk:Tgit_revwalk; var commit_id:Tgit_oid):Tcint;cdecl;external External_library name 'git_revwalk_hide';
function git_revwalk_hide_glob(var walk:Tgit_revwalk; glob:pcchar):Tcint;cdecl;external External_library name 'git_revwalk_hide_glob';
function git_revwalk_hide_head(var walk:Tgit_revwalk):Tcint;cdecl;external External_library name 'git_revwalk_hide_head';
function git_revwalk_push_ref(var walk:Tgit_revwalk; refname:pcchar):Tcint;cdecl;external External_library name 'git_revwalk_push_ref';
function git_revwalk_hide_ref(var walk:Tgit_revwalk; refname:pcchar):Tcint;cdecl;external External_library name 'git_revwalk_hide_ref';
function git_revwalk_next(var out:Tgit_oid; var walk:Tgit_revwalk):Tcint;cdecl;external External_library name 'git_revwalk_next';
function git_revwalk_sorting(var walk:Tgit_revwalk; sort_mode:Tcuint):Tcint;cdecl;external External_library name 'git_revwalk_sorting';
function git_revwalk_push_range(var walk:Tgit_revwalk; range:pcchar):Tcint;cdecl;external External_library name 'git_revwalk_push_range';
function git_revwalk_simplify_first_parent(var walk:Tgit_revwalk):Tcint;cdecl;external External_library name 'git_revwalk_simplify_first_parent';
procedure git_revwalk_free(var walk:Tgit_revwalk);cdecl;external External_library name 'git_revwalk_free';
function git_revwalk_repository(var walk:Tgit_revwalk):Pgit_repository;cdecl;external External_library name 'git_revwalk_repository';
type

  Tgit_revwalk_hide_cb = function (var commit_id:Tgit_oid; payload:pointer):Tcint;cdecl;

function git_revwalk_add_hide_cb(var walk:Tgit_revwalk; hide_cb:Tgit_revwalk_hide_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_revwalk_add_hide_cb';
function git_signature_new(var out:Pgit_signature; name:pcchar; email:pcchar; time:Tgit_time_t; offset:Tcint):Tcint;cdecl;external External_library name 'git_signature_new';
function git_signature_now(var out:Pgit_signature; name:pcchar; email:pcchar):Tcint;cdecl;external External_library name 'git_signature_now';
function git_signature_default(var out:Pgit_signature; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_signature_default';
function git_signature_from_buffer(var out:Pgit_signature; buf:pcchar):Tcint;cdecl;external External_library name 'git_signature_from_buffer';
function git_signature_dup(var dest:Pgit_signature; var sig:Tgit_signature):Tcint;cdecl;external External_library name 'git_signature_dup';
procedure git_signature_free(var sig:Tgit_signature);cdecl;external External_library name 'git_signature_free';
type
  Pgit_stash_flags = ^Tgit_stash_flags;
  Tgit_stash_flags =  Longint;
  Const
    GIT_STASH_DEFAULT = 0;
    GIT_STASH_KEEP_INDEX = 1 shl 0;
    GIT_STASH_INCLUDE_UNTRACKED = 1 shl 1;
    GIT_STASH_INCLUDE_IGNORED = 1 shl 2;


function git_stash_save(var out:Tgit_oid; var repo:Tgit_repository; var stasher:Tgit_signature; message:pcchar; flags:Tuint32_t):Tcint;cdecl;external External_library name 'git_stash_save';
type
  Pgit_stash_apply_flags = ^Tgit_stash_apply_flags;
  Tgit_stash_apply_flags =  Longint;
  Const
    GIT_STASH_APPLY_DEFAULT = 0;
    GIT_STASH_APPLY_REINSTATE_INDEX = 1 shl 0;

type
  Pgit_stash_apply_progress_t = ^Tgit_stash_apply_progress_t;
  Tgit_stash_apply_progress_t =  Longint;
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

  Tgit_stash_apply_progress_cb = function (progress:Tgit_stash_apply_progress_t; payload:pointer):Tcint;cdecl;

  Pgit_stash_apply_options = ^Tgit_stash_apply_options;
  Tgit_stash_apply_options = record
      version : Tcuint;
      flags : Tuint32_t;
      checkout_options : Tgit_checkout_options;
      progress_cb : Tgit_stash_apply_progress_cb;
      progress_payload : pointer;
    end;

function git_stash_apply_options_init(var opts:Tgit_stash_apply_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_stash_apply_options_init';
function git_stash_apply(var repo:Tgit_repository; index:Tsize_t; var options:Tgit_stash_apply_options):Tcint;cdecl;external External_library name 'git_stash_apply';
type

  Tgit_stash_cb = function (index:Tsize_t; message:pcchar; var stash_id:Tgit_oid; payload:pointer):Tcint;cdecl;

function git_stash_foreach(var repo:Tgit_repository; callback:Tgit_stash_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_stash_foreach';
function git_stash_drop(var repo:Tgit_repository; index:Tsize_t):Tcint;cdecl;external External_library name 'git_stash_drop';
function git_stash_pop(var repo:Tgit_repository; index:Tsize_t; var options:Tgit_stash_apply_options):Tcint;cdecl;external External_library name 'git_stash_pop';
type
  Pgit_status_t = ^Tgit_status_t;
  Tgit_status_t =  Longint;
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

  Tgit_status_cb = function (path:pcchar; status_flags:Tcuint; payload:pointer):Tcint;cdecl;

  Pgit_status_show_t = ^Tgit_status_show_t;
  Tgit_status_show_t =  Longint;
  Const
    GIT_STATUS_SHOW_INDEX_AND_WORKDIR = 0;
    GIT_STATUS_SHOW_INDEX_ONLY = 1;
    GIT_STATUS_SHOW_WORKDIR_ONLY = 2;

type
  Pgit_status_opt_t = ^Tgit_status_opt_t;
  Tgit_status_opt_t =  Longint;
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
  Pgit_status_options = ^Tgit_status_options;
  Tgit_status_options = record
      version : Tcuint;
      show : Tgit_status_show_t;
      flags : Tcuint;
      pathspec : Tgit_strarray;
      baseline : Pgit_tree;
    end;

function git_status_options_init(var opts:Tgit_status_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_status_options_init';
type
  Pgit_status_entry = ^Tgit_status_entry;
  Tgit_status_entry = record
      status : Tgit_status_t;
      head_to_index : Pgit_diff_delta;
      index_to_workdir : Pgit_diff_delta;
    end;

function git_status_foreach(var repo:Tgit_repository; callback:Tgit_status_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_status_foreach';
function git_status_foreach_ext(var repo:Tgit_repository; var opts:Tgit_status_options; callback:Tgit_status_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_status_foreach_ext';
function git_status_file(var status_flags:Tcuint; var repo:Tgit_repository; path:pcchar):Tcint;cdecl;external External_library name 'git_status_file';
function git_status_list_new(var out:Pgit_status_list; var repo:Tgit_repository; var opts:Tgit_status_options):Tcint;cdecl;external External_library name 'git_status_list_new';
function git_status_list_entrycount(var statuslist:Tgit_status_list):Tsize_t;cdecl;external External_library name 'git_status_list_entrycount';
function git_status_byindex(var statuslist:Tgit_status_list; idx:Tsize_t):Pgit_status_entry;cdecl;external External_library name 'git_status_byindex';
procedure git_status_list_free(var statuslist:Tgit_status_list);cdecl;external External_library name 'git_status_list_free';
function git_status_should_ignore(var ignored:Tcint; var repo:Tgit_repository; path:pcchar):Tcint;cdecl;external External_library name 'git_status_should_ignore';
type
  Pgit_submodule_status_t = ^Tgit_submodule_status_t;
  Tgit_submodule_status_t =  Longint;
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

  Tgit_submodule_cb = function (var sm:Tgit_submodule; name:pcchar; payload:pointer):Tcint;cdecl;

  Pgit_submodule_update_options = ^Tgit_submodule_update_options;
  Tgit_submodule_update_options = record
      version : Tcuint;
      checkout_opts : Tgit_checkout_options;
      fetch_opts : Tgit_fetch_options;
      allow_fetch : Tcint;
    end;

function git_submodule_update_options_init(var opts:Tgit_submodule_update_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_submodule_update_options_init';
function git_submodule_update(var submodule:Tgit_submodule; init:Tcint; var options:Tgit_submodule_update_options):Tcint;cdecl;external External_library name 'git_submodule_update';
function git_submodule_lookup(var out:Pgit_submodule; var repo:Tgit_repository; name:pcchar):Tcint;cdecl;external External_library name 'git_submodule_lookup';
procedure git_submodule_free(var submodule:Tgit_submodule);cdecl;external External_library name 'git_submodule_free';
function git_submodule_foreach(var repo:Tgit_repository; callback:Tgit_submodule_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_submodule_foreach';
function git_submodule_add_setup(var out:Pgit_submodule; var repo:Tgit_repository; url:pcchar; path:pcchar; use_gitlink:Tcint):Tcint;cdecl;external External_library name 'git_submodule_add_setup';
function git_submodule_clone(var out:Pgit_repository; var submodule:Tgit_submodule; var opts:Tgit_submodule_update_options):Tcint;cdecl;external External_library name 'git_submodule_clone';
function git_submodule_add_finalize(var submodule:Tgit_submodule):Tcint;cdecl;external External_library name 'git_submodule_add_finalize';
function git_submodule_add_to_index(var submodule:Tgit_submodule; write_index:Tcint):Tcint;cdecl;external External_library name 'git_submodule_add_to_index';
function git_submodule_owner(var submodule:Tgit_submodule):Pgit_repository;cdecl;external External_library name 'git_submodule_owner';
function git_submodule_name(var submodule:Tgit_submodule):pcchar;cdecl;external External_library name 'git_submodule_name';
function git_submodule_path(var submodule:Tgit_submodule):pcchar;cdecl;external External_library name 'git_submodule_path';
function git_submodule_url(var submodule:Tgit_submodule):pcchar;cdecl;external External_library name 'git_submodule_url';
function git_submodule_resolve_url(var out:Tgit_buf; var repo:Tgit_repository; url:pcchar):Tcint;cdecl;external External_library name 'git_submodule_resolve_url';
function git_submodule_branch(var submodule:Tgit_submodule):pcchar;cdecl;external External_library name 'git_submodule_branch';
function git_submodule_set_branch(var repo:Tgit_repository; name:pcchar; branch:pcchar):Tcint;cdecl;external External_library name 'git_submodule_set_branch';
function git_submodule_set_url(var repo:Tgit_repository; name:pcchar; url:pcchar):Tcint;cdecl;external External_library name 'git_submodule_set_url';
function git_submodule_index_id(var submodule:Tgit_submodule):Pgit_oid;cdecl;external External_library name 'git_submodule_index_id';
function git_submodule_head_id(var submodule:Tgit_submodule):Pgit_oid;cdecl;external External_library name 'git_submodule_head_id';
function git_submodule_wd_id(var submodule:Tgit_submodule):Pgit_oid;cdecl;external External_library name 'git_submodule_wd_id';
function git_submodule_ignore(var submodule:Tgit_submodule):Tgit_submodule_ignore_t;cdecl;external External_library name 'git_submodule_ignore';
function git_submodule_set_ignore(var repo:Tgit_repository; name:pcchar; ignore:Tgit_submodule_ignore_t):Tcint;cdecl;external External_library name 'git_submodule_set_ignore';
function git_submodule_update_strategy(var submodule:Tgit_submodule):Tgit_submodule_update_t;cdecl;external External_library name 'git_submodule_update_strategy';
function git_submodule_set_update(var repo:Tgit_repository; name:pcchar; update:Tgit_submodule_update_t):Tcint;cdecl;external External_library name 'git_submodule_set_update';
function git_submodule_fetch_recurse_submodules(var submodule:Tgit_submodule):Tgit_submodule_recurse_t;cdecl;external External_library name 'git_submodule_fetch_recurse_submodules';
function git_submodule_set_fetch_recurse_submodules(var repo:Tgit_repository; name:pcchar; fetch_recurse_submodules:Tgit_submodule_recurse_t):Tcint;cdecl;external External_library name 'git_submodule_set_fetch_recurse_submodules';
function git_submodule_init(var submodule:Tgit_submodule; overwrite:Tcint):Tcint;cdecl;external External_library name 'git_submodule_init';
function git_submodule_repo_init(var out:Pgit_repository; var sm:Tgit_submodule; use_gitlink:Tcint):Tcint;cdecl;external External_library name 'git_submodule_repo_init';
function git_submodule_sync(var submodule:Tgit_submodule):Tcint;cdecl;external External_library name 'git_submodule_sync';
function git_submodule_open(var repo:Pgit_repository; var submodule:Tgit_submodule):Tcint;cdecl;external External_library name 'git_submodule_open';
function git_submodule_reload(var submodule:Tgit_submodule; force:Tcint):Tcint;cdecl;external External_library name 'git_submodule_reload';
function git_submodule_status(var status:Tcuint; var repo:Tgit_repository; name:pcchar; ignore:Tgit_submodule_ignore_t):Tcint;cdecl;external External_library name 'git_submodule_status';
function git_submodule_location(var location_status:Tcuint; var submodule:Tgit_submodule):Tcint;cdecl;external External_library name 'git_submodule_location';
function git_tag_lookup(var out:Pgit_tag; var repo:Tgit_repository; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_tag_lookup';
function git_tag_lookup_prefix(var out:Pgit_tag; var repo:Tgit_repository; var id:Tgit_oid; len:Tsize_t):Tcint;cdecl;external External_library name 'git_tag_lookup_prefix';
procedure git_tag_free(var tag:Tgit_tag);cdecl;external External_library name 'git_tag_free';
function git_tag_id(var tag:Tgit_tag):Pgit_oid;cdecl;external External_library name 'git_tag_id';
function git_tag_owner(var tag:Tgit_tag):Pgit_repository;cdecl;external External_library name 'git_tag_owner';
function git_tag_target(var target_out:Pgit_object; var tag:Tgit_tag):Tcint;cdecl;external External_library name 'git_tag_target';
function git_tag_target_id(var tag:Tgit_tag):Pgit_oid;cdecl;external External_library name 'git_tag_target_id';
function git_tag_target_type(var tag:Tgit_tag):Tgit_object_t;cdecl;external External_library name 'git_tag_target_type';
function git_tag_name(var tag:Tgit_tag):pcchar;cdecl;external External_library name 'git_tag_name';
function git_tag_tagger(var tag:Tgit_tag):Pgit_signature;cdecl;external External_library name 'git_tag_tagger';
function git_tag_message(var tag:Tgit_tag):pcchar;cdecl;external External_library name 'git_tag_message';
function git_tag_create(var oid:Tgit_oid; var repo:Tgit_repository; tag_name:pcchar; var target:Tgit_object; var tagger:Tgit_signature; 
           message:pcchar; force:Tcint):Tcint;cdecl;external External_library name 'git_tag_create';
function git_tag_annotation_create(var oid:Tgit_oid; var repo:Tgit_repository; tag_name:pcchar; var target:Tgit_object; var tagger:Tgit_signature; 
           message:pcchar):Tcint;cdecl;external External_library name 'git_tag_annotation_create';
function git_tag_create_from_buffer(var oid:Tgit_oid; var repo:Tgit_repository; buffer:pcchar; force:Tcint):Tcint;cdecl;external External_library name 'git_tag_create_from_buffer';
function git_tag_create_lightweight(var oid:Tgit_oid; var repo:Tgit_repository; tag_name:pcchar; var target:Tgit_object; force:Tcint):Tcint;cdecl;external External_library name 'git_tag_create_lightweight';
function git_tag_delete(var repo:Tgit_repository; tag_name:pcchar):Tcint;cdecl;external External_library name 'git_tag_delete';
function git_tag_list(var tag_names:Tgit_strarray; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_tag_list';
function git_tag_list_match(var tag_names:Tgit_strarray; pattern:pcchar; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_tag_list_match';
type

  Tgit_tag_foreach_cb = function (name:pcchar; var oid:Tgit_oid; payload:pointer):Tcint;cdecl;

function git_tag_foreach(var repo:Tgit_repository; callback:Tgit_tag_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_tag_foreach';
function git_tag_peel(var tag_target_out:Pgit_object; var tag:Tgit_tag):Tcint;cdecl;external External_library name 'git_tag_peel';
function git_tag_dup(var out:Pgit_tag; var source:Tgit_tag):Tcint;cdecl;external External_library name 'git_tag_dup';
function git_transaction_new(var out:Pgit_transaction; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_transaction_new';
function git_transaction_lock_ref(var tx:Tgit_transaction; refname:pcchar):Tcint;cdecl;external External_library name 'git_transaction_lock_ref';
function git_transaction_set_target(var tx:Tgit_transaction; refname:pcchar; var target:Tgit_oid; var sig:Tgit_signature; msg:pcchar):Tcint;cdecl;external External_library name 'git_transaction_set_target';
function git_transaction_set_symbolic_target(var tx:Tgit_transaction; refname:pcchar; target:pcchar; var sig:Tgit_signature; msg:pcchar):Tcint;cdecl;external External_library name 'git_transaction_set_symbolic_target';
function git_transaction_set_reflog(var tx:Tgit_transaction; refname:pcchar; var reflog:Tgit_reflog):Tcint;cdecl;external External_library name 'git_transaction_set_reflog';
function git_transaction_remove(var tx:Tgit_transaction; refname:pcchar):Tcint;cdecl;external External_library name 'git_transaction_remove';
function git_transaction_commit(var tx:Tgit_transaction):Tcint;cdecl;external External_library name 'git_transaction_commit';
procedure git_transaction_free(var tx:Tgit_transaction);cdecl;external External_library name 'git_transaction_free';
function git_worktree_list(var out:Tgit_strarray; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_worktree_list';
function git_worktree_lookup(var out:Pgit_worktree; var repo:Tgit_repository; name:pcchar):Tcint;cdecl;external External_library name 'git_worktree_lookup';
function git_worktree_open_from_repository(var out:Pgit_worktree; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_worktree_open_from_repository';
procedure git_worktree_free(var wt:Tgit_worktree);cdecl;external External_library name 'git_worktree_free';
function git_worktree_validate(var wt:Tgit_worktree):Tcint;cdecl;external External_library name 'git_worktree_validate';
type
  Pgit_worktree_add_options = ^Tgit_worktree_add_options;
  Tgit_worktree_add_options = record
      version : Tcuint;
      lock : Tcint;
      ref : Pgit_reference;
    end;

function git_worktree_add_options_init(var opts:Tgit_worktree_add_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_worktree_add_options_init';
function git_worktree_add(var out:Pgit_worktree; var repo:Tgit_repository; name:pcchar; path:pcchar; var opts:Tgit_worktree_add_options):Tcint;cdecl;external External_library name 'git_worktree_add';
function git_worktree_lock(var wt:Tgit_worktree; reason:pcchar):Tcint;cdecl;external External_library name 'git_worktree_lock';
function git_worktree_unlock(var wt:Tgit_worktree):Tcint;cdecl;external External_library name 'git_worktree_unlock';
function git_worktree_is_locked(var reason:Tgit_buf; var wt:Tgit_worktree):Tcint;cdecl;external External_library name 'git_worktree_is_locked';
function git_worktree_name(var wt:Tgit_worktree):pcchar;cdecl;external External_library name 'git_worktree_name';
function git_worktree_path(var wt:Tgit_worktree):pcchar;cdecl;external External_library name 'git_worktree_path';
type
  Pgit_worktree_prune_t = ^Tgit_worktree_prune_t;
  Tgit_worktree_prune_t =  Longint;
  Const
    GIT_WORKTREE_PRUNE_VALID = 1 shl 0;
    GIT_WORKTREE_PRUNE_LOCKED = 1 shl 1;
    GIT_WORKTREE_PRUNE_WORKING_TREE = 1 shl 2;

type
  Pgit_worktree_prune_options = ^Tgit_worktree_prune_options;
  Tgit_worktree_prune_options = record
      version : Tcuint;
      flags : Tuint32_t;
    end;

function git_worktree_prune_options_init(var opts:Tgit_worktree_prune_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_worktree_prune_options_init';
function git_worktree_is_prunable(var wt:Tgit_worktree; var opts:Tgit_worktree_prune_options):Tcint;cdecl;external External_library name 'git_worktree_is_prunable';
function git_worktree_prune(var wt:Tgit_worktree; var opts:Tgit_worktree_prune_options):Tcint;cdecl;external External_library name 'git_worktree_prune';
function git_libgit2_version(var major:Tcint; var minor:Tcint; var rev:Tcint):Tcint;cdecl;external External_library name 'git_libgit2_version';
type
  Tgit_feature_t =  Longint;
  Const
    GIT_FEATURE_THREADS = 1 shl 0;
    GIT_FEATURE_HTTPS = 1 shl 1;
    GIT_FEATURE_SSH = 1 shl 2;
    GIT_FEATURE_NSEC = 1 shl 3;


function git_libgit2_features:Tcint;cdecl;external External_library name 'git_libgit2_features';
type
  Tgit_libgit2_opt_t =  Longint;
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


function git_libgit2_opts(option:Tcint; args:array of const):Tcint;cdecl;external External_library name 'git_libgit2_opts';
function git_libgit2_opts(option:Tcint):Tcint;cdecl;external External_library name 'git_libgit2_opts';
type
  Tgit_off_t = Tint64_t;

  Tgit_time_t = Tint64_t;

  Tgit_object_size_t = Tuint64_t;

  Tgit_buf = record
      ptr : pcchar;
      asize : Tsize_t;
      size : Tsize_t;
    end;

procedure git_buf_dispose(var buffer:Tgit_buf);cdecl;external External_library name 'git_buf_dispose';
function git_buf_grow(var buffer:Tgit_buf; target_size:Tsize_t):Tcint;cdecl;external External_library name 'git_buf_grow';
function git_buf_set(var buffer:Tgit_buf; data:pointer; datalen:Tsize_t):Tcint;cdecl;external External_library name 'git_buf_set';
function git_buf_is_binary(var buf:Tgit_buf):Tcint;cdecl;external External_library name 'git_buf_is_binary';
function git_buf_contains_nul(var buf:Tgit_buf):Tcint;cdecl;external External_library name 'git_buf_contains_nul';
type
  Tgit_oid = record
      id : TArray0to19OfTcuchar;
    end;

function git_oid_fromstr(var out:Tgit_oid; str:pcchar):Tcint;cdecl;external External_library name 'git_oid_fromstr';
function git_oid_fromstrp(var out:Tgit_oid; str:pcchar):Tcint;cdecl;external External_library name 'git_oid_fromstrp';
function git_oid_fromstrn(var out:Tgit_oid; str:pcchar; length:Tsize_t):Tcint;cdecl;external External_library name 'git_oid_fromstrn';
function git_oid_fromraw(var out:Tgit_oid; raw:pcuchar):Tcint;cdecl;external External_library name 'git_oid_fromraw';
function git_oid_fmt(out:pcchar; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_oid_fmt';
function git_oid_nfmt(out:pcchar; n:Tsize_t; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_oid_nfmt';
function git_oid_pathfmt(out:pcchar; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_oid_pathfmt';
function git_oid_tostr_s(var oid:Tgit_oid):pcchar;cdecl;external External_library name 'git_oid_tostr_s';
function git_oid_tostr(out:pcchar; n:Tsize_t; var id:Tgit_oid):pcchar;cdecl;external External_library name 'git_oid_tostr';
function git_oid_cpy(var out:Tgit_oid; var src:Tgit_oid):Tcint;cdecl;external External_library name 'git_oid_cpy';
function git_oid_cmp(var a:Tgit_oid; var b:Tgit_oid):Tcint;cdecl;external External_library name 'git_oid_cmp';
function git_oid_equal(var a:Tgit_oid; var b:Tgit_oid):Tcint;cdecl;external External_library name 'git_oid_equal';
function git_oid_ncmp(var a:Tgit_oid; var b:Tgit_oid; len:Tsize_t):Tcint;cdecl;external External_library name 'git_oid_ncmp';
function git_oid_streq(var id:Tgit_oid; str:pcchar):Tcint;cdecl;external External_library name 'git_oid_streq';
function git_oid_strcmp(var id:Tgit_oid; str:pcchar):Tcint;cdecl;external External_library name 'git_oid_strcmp';
function git_oid_is_zero(var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_oid_is_zero';


function git_oid_shorten_new(min_length:Tsize_t):Pgit_oid_shorten;cdecl;external External_library name 'git_oid_shorten_new';
function git_oid_shorten_add(var os:Tgit_oid_shorten; text_id:pcchar):Tcint;cdecl;external External_library name 'git_oid_shorten_add';
procedure git_oid_shorten_free(var os:Tgit_oid_shorten);cdecl;external External_library name 'git_oid_shorten_free';
type
  Tgit_object_t =  Longint;
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

  Tgit_time = record
      time : Tgit_time_t;
      offset : Tcint;
      sign : Tcchar;
    end;

  Tgit_signature = record
      name : pcchar;
      email : pcchar;
      when : Tgit_time;
    end;

  Tgit_reference_t =  Longint;
  Const
    GIT_REFERENCE_INVALID = 0;
    GIT_REFERENCE_DIRECT = 1;
    GIT_REFERENCE_SYMBOLIC = 2;
    GIT_REFERENCE_ALL = GIT_REFERENCE_DIRECT or GIT_REFERENCE_SYMBOLIC;

type
  Tgit_branch_t =  Longint;
  Const
    GIT_BRANCH_LOCAL = 1;
    GIT_BRANCH_REMOTE = 2;
    GIT_BRANCH_ALL = GIT_BRANCH_LOCAL or GIT_BRANCH_REMOTE;

type
  Tgit_filemode_t =  Longint;
  Const
    GIT_FILEMODE_UNREADABLE = 0000000;
    GIT_FILEMODE_TREE = 0040000;
    GIT_FILEMODE_BLOB = 0100644;
    GIT_FILEMODE_BLOB_EXECUTABLE = 0100755;
    GIT_FILEMODE_LINK = 0120000;
    GIT_FILEMODE_COMMIT = 0160000;

type

  Tgit_submodule_update_t =  Longint;
  Const
    GIT_SUBMODULE_UPDATE_CHECKOUT = 1;
    GIT_SUBMODULE_UPDATE_REBASE = 2;
    GIT_SUBMODULE_UPDATE_MERGE = 3;
    GIT_SUBMODULE_UPDATE_NONE = 4;
    GIT_SUBMODULE_UPDATE_DEFAULT = 0;

type
  Tgit_submodule_ignore_t =  Longint;
  Const
    GIT_SUBMODULE_IGNORE_UNSPECIFIED = -(1);
    GIT_SUBMODULE_IGNORE_NONE = 1;
    GIT_SUBMODULE_IGNORE_UNTRACKED = 2;
    GIT_SUBMODULE_IGNORE_DIRTY = 3;
    GIT_SUBMODULE_IGNORE_ALL = 4;

type
  Tgit_submodule_recurse_t =  Longint;
  Const
    GIT_SUBMODULE_RECURSE_NO = 0;
    GIT_SUBMODULE_RECURSE_YES = 1;
    GIT_SUBMODULE_RECURSE_ONDEMAND = 2;

type
  Tgit_writestream = record
      write : TFunctionVarStreamTgit_writestreamBufferPccharLenTsize_tTcint;cdecl;
      close : TFunctionVarStreamTgit_writestreamTcint;cdecl;
      free : TProcedureVarStreamTgit_writestream;cdecl;
    end;


function git_repository_open(var out:Pgit_repository; path:pcchar):Tcint;cdecl;external External_library name 'git_repository_open';
function git_repository_open_from_worktree(var out:Pgit_repository; var wt:Tgit_worktree):Tcint;cdecl;external External_library name 'git_repository_open_from_worktree';
function git_repository_wrap_odb(var out:Pgit_repository; var odb:Tgit_odb):Tcint;cdecl;external External_library name 'git_repository_wrap_odb';
function git_repository_discover(var out:Tgit_buf; start_path:pcchar; across_fs:Tcint; ceiling_dirs:pcchar):Tcint;cdecl;external External_library name 'git_repository_discover';
type
  Tgit_repository_open_flag_t =  Longint;
  Const
    GIT_REPOSITORY_OPEN_NO_SEARCH = 1 shl 0;
    GIT_REPOSITORY_OPEN_CROSS_FS = 1 shl 1;
    GIT_REPOSITORY_OPEN_BARE = 1 shl 2;
    GIT_REPOSITORY_OPEN_NO_DOTGIT = 1 shl 3;
    GIT_REPOSITORY_OPEN_FROM_ENV = 1 shl 4;


function git_repository_open_ext(var out:Pgit_repository; path:pcchar; flags:Tcuint; ceiling_dirs:pcchar):Tcint;cdecl;external External_library name 'git_repository_open_ext';
function git_repository_open_bare(var out:Pgit_repository; bare_path:pcchar):Tcint;cdecl;external External_library name 'git_repository_open_bare';
procedure git_repository_free(var repo:Tgit_repository);cdecl;external External_library name 'git_repository_free';
function git_repository_init(var out:Pgit_repository; path:pcchar; is_bare:Tcunsigned):Tcint;cdecl;external External_library name 'git_repository_init';
type
  Tgit_repository_init_flag_t =  Longint;
  Const
    GIT_REPOSITORY_INIT_BARE = 1 shl 0;
    GIT_REPOSITORY_INIT_NO_REINIT = 1 shl 1;
    GIT_REPOSITORY_INIT_NO_DOTGIT_DIR = 1 shl 2;
    GIT_REPOSITORY_INIT_MKDIR = 1 shl 3;
    GIT_REPOSITORY_INIT_MKPATH = 1 shl 4;
    GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE = 1 shl 5;
    GIT_REPOSITORY_INIT_RELATIVE_GITLINK = 1 shl 6;

type
  Tgit_repository_init_mode_t =  Longint;
  Const
    GIT_REPOSITORY_INIT_SHARED_UMASK = 0;
    GIT_REPOSITORY_INIT_SHARED_GROUP = 0002775;
    GIT_REPOSITORY_INIT_SHARED_ALL = 0002777;

type
  Tgit_repository_init_options = record
      version : Tcuint;
      flags : Tuint32_t;
      mode : Tuint32_t;
      workdir_path : pcchar;
      description : pcchar;
      template_path : pcchar;
      initial_head : pcchar;
      origin_url : pcchar;
    end;

function git_repository_init_options_init(var opts:Tgit_repository_init_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_repository_init_options_init';
function git_repository_init_ext(var out:Pgit_repository; repo_path:pcchar; var opts:Tgit_repository_init_options):Tcint;cdecl;external External_library name 'git_repository_init_ext';
function git_repository_head(var out:Pgit_reference; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_head';
function git_repository_head_for_worktree(var out:Pgit_reference; var repo:Tgit_repository; name:pcchar):Tcint;cdecl;external External_library name 'git_repository_head_for_worktree';
function git_repository_head_detached(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_head_detached';
function git_repository_head_detached_for_worktree(var repo:Tgit_repository; name:pcchar):Tcint;cdecl;external External_library name 'git_repository_head_detached_for_worktree';
function git_repository_head_unborn(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_head_unborn';
function git_repository_is_empty(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_is_empty';
type
  Tgit_repository_item_t =  Longint;
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


function git_repository_item_path(var out:Tgit_buf; var repo:Tgit_repository; item:Tgit_repository_item_t):Tcint;cdecl;external External_library name 'git_repository_item_path';
function git_repository_path(var repo:Tgit_repository):pcchar;cdecl;external External_library name 'git_repository_path';
function git_repository_workdir(var repo:Tgit_repository):pcchar;cdecl;external External_library name 'git_repository_workdir';
function git_repository_commondir(var repo:Tgit_repository):pcchar;cdecl;external External_library name 'git_repository_commondir';
function git_repository_set_workdir(var repo:Tgit_repository; workdir:pcchar; update_gitlink:Tcint):Tcint;cdecl;external External_library name 'git_repository_set_workdir';
function git_repository_is_bare(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_is_bare';
function git_repository_is_worktree(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_is_worktree';
function git_repository_config(var out:Pgit_config; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_config';
function git_repository_config_snapshot(var out:Pgit_config; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_config_snapshot';
function git_repository_odb(var out:Pgit_odb; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_odb';
function git_repository_refdb(var out:Pgit_refdb; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_refdb';
function git_repository_index(var out:Pgit_index; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_index';
function git_repository_message(var out:Tgit_buf; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_message';
function git_repository_message_remove(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_message_remove';
function git_repository_state_cleanup(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_state_cleanup';
type

  Tgit_repository_fetchhead_foreach_cb = function (ref_name:pcchar; remote_url:pcchar; var oid:Tgit_oid; is_merge:Tcuint; payload:pointer):Tcint;cdecl;

function git_repository_fetchhead_foreach(var repo:Tgit_repository; callback:Tgit_repository_fetchhead_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_repository_fetchhead_foreach';
type

  Tgit_repository_mergehead_foreach_cb = function (var oid:Tgit_oid; payload:pointer):Tcint;cdecl;

function git_repository_mergehead_foreach(var repo:Tgit_repository; callback:Tgit_repository_mergehead_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_repository_mergehead_foreach';
function git_repository_hashfile(var out:Tgit_oid; var repo:Tgit_repository; path:pcchar; _type:Tgit_object_t; as_path:pcchar):Tcint;cdecl;external External_library name 'git_repository_hashfile';
function git_repository_set_head(var repo:Tgit_repository; refname:pcchar):Tcint;cdecl;external External_library name 'git_repository_set_head';
function git_repository_set_head_detached(var repo:Tgit_repository; var commitish:Tgit_oid):Tcint;cdecl;external External_library name 'git_repository_set_head_detached';
function git_repository_set_head_detached_from_annotated(var repo:Tgit_repository; var commitish:Tgit_annotated_commit):Tcint;cdecl;external External_library name 'git_repository_set_head_detached_from_annotated';
function git_repository_detach_head(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_detach_head';
type
  Tgit_repository_state_t =  Longint;
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


function git_repository_state(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_state';
function git_repository_set_namespace(var repo:Tgit_repository; nmspace:pcchar):Tcint;cdecl;external External_library name 'git_repository_set_namespace';
function git_repository_get_namespace(var repo:Tgit_repository):pcchar;cdecl;external External_library name 'git_repository_get_namespace';
function git_repository_is_shallow(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_is_shallow';
function git_repository_ident(name:Ppcchar; email:Ppcchar; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_repository_ident';
function git_repository_set_ident(var repo:Tgit_repository; name:pcchar; email:pcchar):Tcint;cdecl;external External_library name 'git_repository_set_ident';
function git_annotated_commit_from_ref(var out:Pgit_annotated_commit; var repo:Tgit_repository; var ref:Tgit_reference):Tcint;cdecl;external External_library name 'git_annotated_commit_from_ref';
function git_annotated_commit_from_fetchhead(var out:Pgit_annotated_commit; var repo:Tgit_repository; branch_name:pcchar; remote_url:pcchar; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_annotated_commit_from_fetchhead';
function git_annotated_commit_lookup(var out:Pgit_annotated_commit; var repo:Tgit_repository; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_annotated_commit_lookup';
function git_annotated_commit_from_revspec(var out:Pgit_annotated_commit; var repo:Tgit_repository; revspec:pcchar):Tcint;cdecl;external External_library name 'git_annotated_commit_from_revspec';
function git_annotated_commit_id(var commit:Tgit_annotated_commit):Pgit_oid;cdecl;external External_library name 'git_annotated_commit_id';
function git_annotated_commit_ref(var commit:Tgit_annotated_commit):pcchar;cdecl;external External_library name 'git_annotated_commit_ref';
procedure git_annotated_commit_free(var commit:Tgit_annotated_commit);cdecl;external External_library name 'git_annotated_commit_free';
function git_object_lookup(var object:Pgit_object; var repo:Tgit_repository; var id:Tgit_oid; _type:Tgit_object_t):Tcint;cdecl;external External_library name 'git_object_lookup';
function git_object_lookup_prefix(var object_out:Pgit_object; var repo:Tgit_repository; var id:Tgit_oid; len:Tsize_t; _type:Tgit_object_t):Tcint;cdecl;external External_library name 'git_object_lookup_prefix';
function git_object_lookup_bypath(var out:Pgit_object; var treeish:Tgit_object; path:pcchar; _type:Tgit_object_t):Tcint;cdecl;external External_library name 'git_object_lookup_bypath';
function git_object_id(var obj:Tgit_object):Pgit_oid;cdecl;external External_library name 'git_object_id';
function git_object_short_id(var out:Tgit_buf; var obj:Tgit_object):Tcint;cdecl;external External_library name 'git_object_short_id';
function git_object_type(var obj:Tgit_object):Tgit_object_t;cdecl;external External_library name 'git_object_type';
function git_object_owner(var obj:Tgit_object):Pgit_repository;cdecl;external External_library name 'git_object_owner';
procedure git_object_free(var object:Tgit_object);cdecl;external External_library name 'git_object_free';
function git_object_type2string(_type:Tgit_object_t):pcchar;cdecl;external External_library name 'git_object_type2string';
function git_object_string2type(str:pcchar):Tgit_object_t;cdecl;external External_library name 'git_object_string2type';
function git_object_typeisloose(_type:Tgit_object_t):Tcint;cdecl;external External_library name 'git_object_typeisloose';
function git_object_peel(var peeled:Pgit_object; var object:Tgit_object; target_type:Tgit_object_t):Tcint;cdecl;external External_library name 'git_object_peel';
function git_object_dup(var dest:Pgit_object; var source:Tgit_object):Tcint;cdecl;external External_library name 'git_object_dup';
function git_tree_lookup(var out:Pgit_tree; var repo:Tgit_repository; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_tree_lookup';
function git_tree_lookup_prefix(var out:Pgit_tree; var repo:Tgit_repository; var id:Tgit_oid; len:Tsize_t):Tcint;cdecl;external External_library name 'git_tree_lookup_prefix';
procedure git_tree_free(var tree:Tgit_tree);cdecl;external External_library name 'git_tree_free';
function git_tree_id(var tree:Tgit_tree):Pgit_oid;cdecl;external External_library name 'git_tree_id';
function git_tree_owner(var tree:Tgit_tree):Pgit_repository;cdecl;external External_library name 'git_tree_owner';
function git_tree_entrycount(var tree:Tgit_tree):Tsize_t;cdecl;external External_library name 'git_tree_entrycount';
function git_tree_entry_byname(var tree:Tgit_tree; filename:pcchar):Pgit_tree_entry;cdecl;external External_library name 'git_tree_entry_byname';
function git_tree_entry_byindex(var tree:Tgit_tree; idx:Tsize_t):Pgit_tree_entry;cdecl;external External_library name 'git_tree_entry_byindex';
function git_tree_entry_byid(var tree:Tgit_tree; var id:Tgit_oid):Pgit_tree_entry;cdecl;external External_library name 'git_tree_entry_byid';
function git_tree_entry_bypath(var out:Pgit_tree_entry; var root:Tgit_tree; path:pcchar):Tcint;cdecl;external External_library name 'git_tree_entry_bypath';
function git_tree_entry_dup(var dest:Pgit_tree_entry; var source:Tgit_tree_entry):Tcint;cdecl;external External_library name 'git_tree_entry_dup';
procedure git_tree_entry_free(var entry:Tgit_tree_entry);cdecl;external External_library name 'git_tree_entry_free';
function git_tree_entry_name(var entry:Tgit_tree_entry):pcchar;cdecl;external External_library name 'git_tree_entry_name';
function git_tree_entry_id(var entry:Tgit_tree_entry):Pgit_oid;cdecl;external External_library name 'git_tree_entry_id';
function git_tree_entry_type(var entry:Tgit_tree_entry):Tgit_object_t;cdecl;external External_library name 'git_tree_entry_type';
function git_tree_entry_filemode(var entry:Tgit_tree_entry):Tgit_filemode_t;cdecl;external External_library name 'git_tree_entry_filemode';
function git_tree_entry_filemode_raw(var entry:Tgit_tree_entry):Tgit_filemode_t;cdecl;external External_library name 'git_tree_entry_filemode_raw';
function git_tree_entry_cmp(var e1:Tgit_tree_entry; var e2:Tgit_tree_entry):Tcint;cdecl;external External_library name 'git_tree_entry_cmp';
function git_tree_entry_to_object(var object_out:Pgit_object; var repo:Tgit_repository; var entry:Tgit_tree_entry):Tcint;cdecl;external External_library name 'git_tree_entry_to_object';
function git_treebuilder_new(var out:Pgit_treebuilder; var repo:Tgit_repository; var source:Tgit_tree):Tcint;cdecl;external External_library name 'git_treebuilder_new';
function git_treebuilder_clear(var bld:Tgit_treebuilder):Tcint;cdecl;external External_library name 'git_treebuilder_clear';
function git_treebuilder_entrycount(var bld:Tgit_treebuilder):Tsize_t;cdecl;external External_library name 'git_treebuilder_entrycount';
procedure git_treebuilder_free(var bld:Tgit_treebuilder);cdecl;external External_library name 'git_treebuilder_free';
function git_treebuilder_get(var bld:Tgit_treebuilder; filename:pcchar):Pgit_tree_entry;cdecl;external External_library name 'git_treebuilder_get';
function git_treebuilder_insert(var out:Pgit_tree_entry; var bld:Tgit_treebuilder; filename:pcchar; var id:Tgit_oid; filemode:Tgit_filemode_t):Tcint;cdecl;external External_library name 'git_treebuilder_insert';
function git_treebuilder_remove(var bld:Tgit_treebuilder; filename:pcchar):Tcint;cdecl;external External_library name 'git_treebuilder_remove';
type

  Tgit_treebuilder_filter_cb = function (var entry:Tgit_tree_entry; payload:pointer):Tcint;cdecl;

function git_treebuilder_filter(var bld:Tgit_treebuilder; filter:Tgit_treebuilder_filter_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_treebuilder_filter';
function git_treebuilder_write(var id:Tgit_oid; var bld:Tgit_treebuilder):Tcint;cdecl;external External_library name 'git_treebuilder_write';
function git_treebuilder_write_with_buffer(var oid:Tgit_oid; var bld:Tgit_treebuilder; var tree:Tgit_buf):Tcint;cdecl;external External_library name 'git_treebuilder_write_with_buffer';
type

  Tgit_treewalk_cb = function (root:pcchar; var entry:Tgit_tree_entry; payload:pointer):Tcint;cdecl;

  Tgit_treewalk_mode =  Longint;
  Const
    GIT_TREEWALK_PRE = 0;
    GIT_TREEWALK_POST = 1;


function git_tree_walk(var tree:Tgit_tree; mode:Tgit_treewalk_mode; callback:Tgit_treewalk_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_tree_walk';
function git_tree_dup(var out:Pgit_tree; var source:Tgit_tree):Tcint;cdecl;external External_library name 'git_tree_dup';
type
  Tgit_tree_update_t =  Longint;
  Const
    GIT_TREE_UPDATE_UPSERT = 0;
    GIT_TREE_UPDATE_REMOVE = 1;

type
  Tgit_tree_update = record
      action : Tgit_tree_update_t;
      id : Tgit_oid;
      filemode : Tgit_filemode_t;
      path : pcchar;
    end;

function git_tree_create_updated(var out:Tgit_oid; var repo:Tgit_repository; var baseline:Tgit_tree; nupdates:Tsize_t; var updates:Tgit_tree_update):Tcint;cdecl;external External_library name 'git_tree_create_updated';
type
  Tgit_strarray = record
      strings : ^pcchar;
      count : Tsize_t;
    end;

procedure git_strarray_dispose(var array:Tgit_strarray);cdecl;external External_library name 'git_strarray_dispose';
function git_strarray_copy(var tgt:Tgit_strarray; var src:Tgit_strarray):Tcint;cdecl;external External_library name 'git_strarray_copy';
function git_reference_lookup(var out:Pgit_reference; var repo:Tgit_repository; name:pcchar):Tcint;cdecl;external External_library name 'git_reference_lookup';
function git_reference_name_to_id(var out:Tgit_oid; var repo:Tgit_repository; name:pcchar):Tcint;cdecl;external External_library name 'git_reference_name_to_id';
function git_reference_dwim(var out:Pgit_reference; var repo:Tgit_repository; shorthand:pcchar):Tcint;cdecl;external External_library name 'git_reference_dwim';
function git_reference_symbolic_create_matching(var out:Pgit_reference; var repo:Tgit_repository; name:pcchar; target:pcchar; force:Tcint; 
           current_value:pcchar; log_message:pcchar):Tcint;cdecl;external External_library name 'git_reference_symbolic_create_matching';
function git_reference_symbolic_create(var out:Pgit_reference; var repo:Tgit_repository; name:pcchar; target:pcchar; force:Tcint; 
           log_message:pcchar):Tcint;cdecl;external External_library name 'git_reference_symbolic_create';
function git_reference_create(var out:Pgit_reference; var repo:Tgit_repository; name:pcchar; var id:Tgit_oid; force:Tcint; 
           log_message:pcchar):Tcint;cdecl;external External_library name 'git_reference_create';
function git_reference_create_matching(var out:Pgit_reference; var repo:Tgit_repository; name:pcchar; var id:Tgit_oid; force:Tcint; 
           var current_id:Tgit_oid; log_message:pcchar):Tcint;cdecl;external External_library name 'git_reference_create_matching';
function git_reference_target(var ref:Tgit_reference):Pgit_oid;cdecl;external External_library name 'git_reference_target';
function git_reference_target_peel(var ref:Tgit_reference):Pgit_oid;cdecl;external External_library name 'git_reference_target_peel';
function git_reference_symbolic_target(var ref:Tgit_reference):pcchar;cdecl;external External_library name 'git_reference_symbolic_target';
function git_reference_type(var ref:Tgit_reference):Tgit_reference_t;cdecl;external External_library name 'git_reference_type';
function git_reference_name(var ref:Tgit_reference):pcchar;cdecl;external External_library name 'git_reference_name';
function git_reference_resolve(var out:Pgit_reference; var ref:Tgit_reference):Tcint;cdecl;external External_library name 'git_reference_resolve';
function git_reference_owner(var ref:Tgit_reference):Pgit_repository;cdecl;external External_library name 'git_reference_owner';
function git_reference_symbolic_set_target(var out:Pgit_reference; var ref:Tgit_reference; target:pcchar; log_message:pcchar):Tcint;cdecl;external External_library name 'git_reference_symbolic_set_target';
function git_reference_set_target(var out:Pgit_reference; var ref:Tgit_reference; var id:Tgit_oid; log_message:pcchar):Tcint;cdecl;external External_library name 'git_reference_set_target';
function git_reference_rename(var new_ref:Pgit_reference; var ref:Tgit_reference; new_name:pcchar; force:Tcint; log_message:pcchar):Tcint;cdecl;external External_library name 'git_reference_rename';
function git_reference_delete(var ref:Tgit_reference):Tcint;cdecl;external External_library name 'git_reference_delete';
function git_reference_remove(var repo:Tgit_repository; name:pcchar):Tcint;cdecl;external External_library name 'git_reference_remove';
function git_reference_list(var array:Tgit_strarray; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_reference_list';
type

  Tgit_reference_foreach_cb = function (var reference:Tgit_reference; payload:pointer):Tcint;cdecl;

  Tgit_reference_foreach_name_cb = function (name:pcchar; payload:pointer):Tcint;cdecl;

function git_reference_foreach(var repo:Tgit_repository; callback:Tgit_reference_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_reference_foreach';
function git_reference_foreach_name(var repo:Tgit_repository; callback:Tgit_reference_foreach_name_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_reference_foreach_name';
function git_reference_dup(var dest:Pgit_reference; var source:Tgit_reference):Tcint;cdecl;external External_library name 'git_reference_dup';
procedure git_reference_free(var ref:Tgit_reference);cdecl;external External_library name 'git_reference_free';
function git_reference_cmp(var ref1:Tgit_reference; var ref2:Tgit_reference):Tcint;cdecl;external External_library name 'git_reference_cmp';
function git_reference_iterator_new(var out:Pgit_reference_iterator; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_reference_iterator_new';
function git_reference_iterator_glob_new(var out:Pgit_reference_iterator; var repo:Tgit_repository; glob:pcchar):Tcint;cdecl;external External_library name 'git_reference_iterator_glob_new';
function git_reference_next(var out:Pgit_reference; var iter:Tgit_reference_iterator):Tcint;cdecl;external External_library name 'git_reference_next';
function git_reference_next_name(out:Ppcchar; var iter:Tgit_reference_iterator):Tcint;cdecl;external External_library name 'git_reference_next_name';
procedure git_reference_iterator_free(var iter:Tgit_reference_iterator);cdecl;external External_library name 'git_reference_iterator_free';
function git_reference_foreach_glob(var repo:Tgit_repository; glob:pcchar; callback:Tgit_reference_foreach_name_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_reference_foreach_glob';
function git_reference_has_log(var repo:Tgit_repository; refname:pcchar):Tcint;cdecl;external External_library name 'git_reference_has_log';
function git_reference_ensure_log(var repo:Tgit_repository; refname:pcchar):Tcint;cdecl;external External_library name 'git_reference_ensure_log';
function git_reference_is_branch(var ref:Tgit_reference):Tcint;cdecl;external External_library name 'git_reference_is_branch';
function git_reference_is_remote(var ref:Tgit_reference):Tcint;cdecl;external External_library name 'git_reference_is_remote';
function git_reference_is_tag(var ref:Tgit_reference):Tcint;cdecl;external External_library name 'git_reference_is_tag';
function git_reference_is_note(var ref:Tgit_reference):Tcint;cdecl;external External_library name 'git_reference_is_note';
type
  Tgit_reference_format_t =  Longint;
  Const
    GIT_REFERENCE_FORMAT_NORMAL = 0;
    GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL = 1 shl 0;
    GIT_REFERENCE_FORMAT_REFSPEC_PATTERN = 1 shl 1;
    GIT_REFERENCE_FORMAT_REFSPEC_SHORTHAND = 1 shl 2;


function git_reference_normalize_name(buffer_out:pcchar; buffer_size:Tsize_t; name:pcchar; flags:Tcuint):Tcint;cdecl;external External_library name 'git_reference_normalize_name';
function git_reference_peel(var out:Pgit_object; var ref:Tgit_reference; _type:Tgit_object_t):Tcint;cdecl;external External_library name 'git_reference_peel';
function git_reference_is_valid_name(refname:pcchar):Tcint;cdecl;external External_library name 'git_reference_is_valid_name';
function git_reference_shorthand(var ref:Tgit_reference):pcchar;cdecl;external External_library name 'git_reference_shorthand';
type
  Tgit_diff_option_t =  Longint;
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

  Tgit_diff_flag_t =  Longint;
  Const
    GIT_DIFF_FLAG_BINARY = 1 shl 0;
    GIT_DIFF_FLAG_NOT_BINARY = 1 shl 1;
    GIT_DIFF_FLAG_VALID_ID = 1 shl 2;
    GIT_DIFF_FLAG_EXISTS = 1 shl 3;

type
  Tgit_delta_t =  Longint;
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
  Tgit_diff_file = record
      id : Tgit_oid;
      path : pcchar;
      size : Tgit_object_size_t;
      flags : Tuint32_t;
      mode : Tuint16_t;
      id_abbrev : Tuint16_t;
    end;

  Tgit_diff_delta = record
      status : Tgit_delta_t;
      flags : Tuint32_t;
      similarity : Tuint16_t;
      nfiles : Tuint16_t;
      old_file : Tgit_diff_file;
      new_file : Tgit_diff_file;
    end;

  Tgit_diff_notify_cb = function (var diff_so_far:Tgit_diff; var delta_to_add:Tgit_diff_delta; matched_pathspec:pcchar; payload:pointer):Tcint;cdecl;

  Tgit_diff_progress_cb = function (var diff_so_far:Tgit_diff; old_path:pcchar; new_path:pcchar; payload:pointer):Tcint;cdecl;

  Tgit_diff_options = record
      version : Tcuint;
      flags : Tuint32_t;
      ignore_submodules : Tgit_submodule_ignore_t;
      pathspec : Tgit_strarray;
      notify_cb : Tgit_diff_notify_cb;
      progress_cb : Tgit_diff_progress_cb;
      payload : pointer;
      context_lines : Tuint32_t;
      interhunk_lines : Tuint32_t;
      id_abbrev : Tuint16_t;
      max_size : Tgit_off_t;
      old_prefix : pcchar;
      new_prefix : pcchar;
    end;

function git_diff_options_init(var opts:Tgit_diff_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_diff_options_init';
type

  Tgit_diff_file_cb = function (var delta:Tgit_diff_delta; progress:Tcfloat; payload:pointer):Tcint;cdecl;

  Tgit_diff_binary_t =  Longint;
  Const
    GIT_DIFF_BINARY_NONE = 0;
    GIT_DIFF_BINARY_LITERAL = 1;
    GIT_DIFF_BINARY_DELTA = 2;

type
  Tgit_diff_binary_file = record
      _type : Tgit_diff_binary_t;
      data : pcchar;
      datalen : Tsize_t;
      inflatedlen : Tsize_t;
    end;

  Tgit_diff_binary = record
      contains_data : Tcuint;
      old_file : Tgit_diff_binary_file;
      new_file : Tgit_diff_binary_file;
    end;

  Tgit_diff_binary_cb = function (var delta:Tgit_diff_delta; var binary:Tgit_diff_binary; payload:pointer):Tcint;cdecl;

  Tgit_diff_hunk = record
      old_start : Tcint;
      old_lines : Tcint;
      new_start : Tcint;
      new_lines : Tcint;
      header_len : Tsize_t;
      header : TArray0to127OfTcchar;
    end;

  Tgit_diff_hunk_cb = function (var delta:Tgit_diff_delta; var hunk:Tgit_diff_hunk; payload:pointer):Tcint;cdecl;

  Tgit_diff_line_t =  Longint;
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
  Tgit_diff_line = record
      origin : Tcchar;
      old_lineno : Tcint;
      new_lineno : Tcint;
      num_lines : Tcint;
      content_len : Tsize_t;
      content_offset : Tgit_off_t;
      content : pcchar;
    end;

  Tgit_diff_line_cb = function (var delta:Tgit_diff_delta; var hunk:Tgit_diff_hunk; var line:Tgit_diff_line; payload:pointer):Tcint;cdecl;

  Tgit_diff_find_t =  Longint;
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
  Tgit_diff_similarity_metric = record
      file_signature : TFunctionOutPpointerVarFileTgit_diff_fileFullpathPccharPayloadPointerTcint;cdecl;
      buffer_signature : TFunctionOutPpointerVarFileTgit_diff_fileBufPccharBuflenTsize_tPayloadPointerTcint;cdecl;
      free_signature : TProcedureSigPointerPayloadPointer;cdecl;
      similarity : TFunctionVarScoreTcintSigaPointerSigbPointerPayloadPointerTcint;cdecl;
      payload : pointer;
    end;

  Tgit_diff_find_options = record
      version : Tcuint;
      flags : Tuint32_t;
      rename_threshold : Tuint16_t;
      rename_from_rewrite_threshold : Tuint16_t;
      copy_threshold : Tuint16_t;
      break_rewrite_threshold : Tuint16_t;
      rename_limit : Tsize_t;
      metric : Pgit_diff_similarity_metric;
    end;

function git_diff_find_options_init(var opts:Tgit_diff_find_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_diff_find_options_init';
procedure git_diff_free(var diff:Tgit_diff);cdecl;external External_library name 'git_diff_free';
function git_diff_tree_to_tree(var diff:Pgit_diff; var repo:Tgit_repository; var old_tree:Tgit_tree; var new_tree:Tgit_tree; var opts:Tgit_diff_options):Tcint;cdecl;external External_library name 'git_diff_tree_to_tree';
function git_diff_tree_to_index(var diff:Pgit_diff; var repo:Tgit_repository; var old_tree:Tgit_tree; var index:Tgit_index; var opts:Tgit_diff_options):Tcint;cdecl;external External_library name 'git_diff_tree_to_index';
function git_diff_index_to_workdir(var diff:Pgit_diff; var repo:Tgit_repository; var index:Tgit_index; var opts:Tgit_diff_options):Tcint;cdecl;external External_library name 'git_diff_index_to_workdir';
function git_diff_tree_to_workdir(var diff:Pgit_diff; var repo:Tgit_repository; var old_tree:Tgit_tree; var opts:Tgit_diff_options):Tcint;cdecl;external External_library name 'git_diff_tree_to_workdir';
function git_diff_tree_to_workdir_with_index(var diff:Pgit_diff; var repo:Tgit_repository; var old_tree:Tgit_tree; var opts:Tgit_diff_options):Tcint;cdecl;external External_library name 'git_diff_tree_to_workdir_with_index';
function git_diff_index_to_index(var diff:Pgit_diff; var repo:Tgit_repository; var old_index:Tgit_index; var new_index:Tgit_index; var opts:Tgit_diff_options):Tcint;cdecl;external External_library name 'git_diff_index_to_index';
function git_diff_merge(var onto:Tgit_diff; var from:Tgit_diff):Tcint;cdecl;external External_library name 'git_diff_merge';
function git_diff_find_similar(var diff:Tgit_diff; var options:Tgit_diff_find_options):Tcint;cdecl;external External_library name 'git_diff_find_similar';
function git_diff_num_deltas(var diff:Tgit_diff):Tsize_t;cdecl;external External_library name 'git_diff_num_deltas';
function git_diff_num_deltas_of_type(var diff:Tgit_diff; _type:Tgit_delta_t):Tsize_t;cdecl;external External_library name 'git_diff_num_deltas_of_type';
function git_diff_get_delta(var diff:Tgit_diff; idx:Tsize_t):Pgit_diff_delta;cdecl;external External_library name 'git_diff_get_delta';
function git_diff_is_sorted_icase(var diff:Tgit_diff):Tcint;cdecl;external External_library name 'git_diff_is_sorted_icase';
function git_diff_foreach(var diff:Tgit_diff; file_cb:Tgit_diff_file_cb; binary_cb:Tgit_diff_binary_cb; hunk_cb:Tgit_diff_hunk_cb; line_cb:Tgit_diff_line_cb; 
           payload:pointer):Tcint;cdecl;external External_library name 'git_diff_foreach';
function git_diff_status_char(status:Tgit_delta_t):Tcchar;cdecl;external External_library name 'git_diff_status_char';
type
  Tgit_diff_format_t =  Longint;
  Const
    GIT_DIFF_FORMAT_PATCH = 1;
    GIT_DIFF_FORMAT_PATCH_HEADER = 2;
    GIT_DIFF_FORMAT_RAW = 3;
    GIT_DIFF_FORMAT_NAME_ONLY = 4;
    GIT_DIFF_FORMAT_NAME_STATUS = 5;
    GIT_DIFF_FORMAT_PATCH_ID = 6;


function git_diff_print(var diff:Tgit_diff; format:Tgit_diff_format_t; print_cb:Tgit_diff_line_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_diff_print';
function git_diff_to_buf(var out:Tgit_buf; var diff:Tgit_diff; format:Tgit_diff_format_t):Tcint;cdecl;external External_library name 'git_diff_to_buf';
function git_diff_blobs(var old_blob:Tgit_blob; old_as_path:pcchar; var new_blob:Tgit_blob; new_as_path:pcchar; var options:Tgit_diff_options; 
           file_cb:Tgit_diff_file_cb; binary_cb:Tgit_diff_binary_cb; hunk_cb:Tgit_diff_hunk_cb; line_cb:Tgit_diff_line_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_diff_blobs';
function git_diff_blob_to_buffer(var old_blob:Tgit_blob; old_as_path:pcchar; buffer:pcchar; buffer_len:Tsize_t; buffer_as_path:pcchar; 
           var options:Tgit_diff_options; file_cb:Tgit_diff_file_cb; binary_cb:Tgit_diff_binary_cb; hunk_cb:Tgit_diff_hunk_cb; line_cb:Tgit_diff_line_cb; 
           payload:pointer):Tcint;cdecl;external External_library name 'git_diff_blob_to_buffer';
function git_diff_buffers(old_buffer:pointer; old_len:Tsize_t; old_as_path:pcchar; new_buffer:pointer; new_len:Tsize_t; 
           new_as_path:pcchar; var options:Tgit_diff_options; file_cb:Tgit_diff_file_cb; binary_cb:Tgit_diff_binary_cb; hunk_cb:Tgit_diff_hunk_cb; 
           line_cb:Tgit_diff_line_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_diff_buffers';
function git_diff_from_buffer(var out:Pgit_diff; content:pcchar; content_len:Tsize_t):Tcint;cdecl;external External_library name 'git_diff_from_buffer';
type

  Tgit_diff_stats_format_t =  Longint;
  Const
    GIT_DIFF_STATS_NONE = 0;
    GIT_DIFF_STATS_FULL = 1 shl 0;
    GIT_DIFF_STATS_SHORT = 1 shl 1;
    GIT_DIFF_STATS_NUMBER = 1 shl 2;
    GIT_DIFF_STATS_INCLUDE_SUMMARY = 1 shl 3;


function git_diff_get_stats(var out:Pgit_diff_stats; var diff:Tgit_diff):Tcint;cdecl;external External_library name 'git_diff_get_stats';
function git_diff_stats_files_changed(var stats:Tgit_diff_stats):Tsize_t;cdecl;external External_library name 'git_diff_stats_files_changed';
function git_diff_stats_insertions(var stats:Tgit_diff_stats):Tsize_t;cdecl;external External_library name 'git_diff_stats_insertions';
function git_diff_stats_deletions(var stats:Tgit_diff_stats):Tsize_t;cdecl;external External_library name 'git_diff_stats_deletions';
function git_diff_stats_to_buf(var out:Tgit_buf; var stats:Tgit_diff_stats; format:Tgit_diff_stats_format_t; width:Tsize_t):Tcint;cdecl;external External_library name 'git_diff_stats_to_buf';
procedure git_diff_stats_free(var stats:Tgit_diff_stats);cdecl;external External_library name 'git_diff_stats_free';
type
  Tgit_diff_format_email_flags_t =  Longint;
  Const
    GIT_DIFF_FORMAT_EMAIL_NONE = 0;
    GIT_DIFF_FORMAT_EMAIL_EXCLUDE_SUBJECT_PATCH_MARKER = 1 shl 0;

type
  Tgit_diff_format_email_options = record
      version : Tcuint;
      flags : Tuint32_t;
      patch_no : Tsize_t;
      total_patches : Tsize_t;
      id : Pgit_oid;
      summary : pcchar;
      body : pcchar;
      author : Pgit_signature;
    end;

function git_diff_format_email(var out:Tgit_buf; var diff:Tgit_diff; var opts:Tgit_diff_format_email_options):Tcint;cdecl;external External_library name 'git_diff_format_email';
function git_diff_commit_as_email(var out:Tgit_buf; var repo:Tgit_repository; var commit:Tgit_commit; patch_no:Tsize_t; total_patches:Tsize_t; 
           flags:Tuint32_t; var diff_opts:Tgit_diff_options):Tcint;cdecl;external External_library name 'git_diff_commit_as_email';
function git_diff_format_email_options_init(var opts:Tgit_diff_format_email_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_diff_format_email_options_init';
type
  Tgit_diff_patchid_options = record
      version : Tcuint;
    end;

function git_diff_patchid_options_init(var opts:Tgit_diff_patchid_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_diff_patchid_options_init';
function git_diff_patchid(var out:Tgit_oid; var diff:Tgit_diff; var opts:Tgit_diff_patchid_options):Tcint;cdecl;external External_library name 'git_diff_patchid';
type

  Tgit_apply_delta_cb = function (var delta:Tgit_diff_delta; payload:pointer):Tcint;cdecl;

  Tgit_apply_hunk_cb = function (var hunk:Tgit_diff_hunk; payload:pointer):Tcint;cdecl;

  Tgit_apply_flags_t =  Longint;
  Const
    GIT_APPLY_CHECK = 1 shl 0;

type
  Tgit_apply_options = record
      version : Tcuint;
      delta_cb : Tgit_apply_delta_cb;
      hunk_cb : Tgit_apply_hunk_cb;
      payload : pointer;
      flags : Tcuint;
    end;

function git_apply_options_init(var opts:Tgit_apply_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_apply_options_init';
function git_apply_to_tree(var out:Pgit_index; var repo:Tgit_repository; var preimage:Tgit_tree; var diff:Tgit_diff; var options:Tgit_apply_options):Tcint;cdecl;external External_library name 'git_apply_to_tree';
type
  Tgit_apply_location_t =  Longint;
  Const
    GIT_APPLY_LOCATION_WORKDIR = 0;
    GIT_APPLY_LOCATION_INDEX = 1;
    GIT_APPLY_LOCATION_BOTH = 2;


function git_apply(var repo:Tgit_repository; var diff:Tgit_diff; location:Tgit_apply_location_t; var options:Tgit_apply_options):Tcint;cdecl;external External_library name 'git_apply';
type
  Tgit_attr_value_t =  Longint;
  Const
    GIT_ATTR_VALUE_UNSPECIFIED = 0;
    GIT_ATTR_VALUE_TRUE = 1;
    GIT_ATTR_VALUE_FALSE = 2;
    GIT_ATTR_VALUE_STRING = 3;


function git_attr_value(attr:pcchar):Tgit_attr_value_t;cdecl;external External_library name 'git_attr_value';
function git_attr_get(value_out:Ppcchar; var repo:Tgit_repository; flags:Tuint32_t; path:pcchar; name:pcchar):Tcint;cdecl;external External_library name 'git_attr_get';
function git_attr_get_many(values_out:Ppcchar; var repo:Tgit_repository; flags:Tuint32_t; path:pcchar; num_attr:Tsize_t; 
           names:Ppcchar):Tcint;cdecl;external External_library name 'git_attr_get_many';
type

  Tgit_attr_foreach_cb = function (name:pcchar; value:pcchar; payload:pointer):Tcint;cdecl;

function git_attr_foreach(var repo:Tgit_repository; flags:Tuint32_t; path:pcchar; callback:Tgit_attr_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_attr_foreach';
function git_attr_cache_flush(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_attr_cache_flush';
function git_attr_add_macro(var repo:Tgit_repository; name:pcchar; values:pcchar):Tcint;cdecl;external External_library name 'git_attr_add_macro';
function git_blob_lookup(var blob:Pgit_blob; var repo:Tgit_repository; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_blob_lookup';
function git_blob_lookup_prefix(var blob:Pgit_blob; var repo:Tgit_repository; var id:Tgit_oid; len:Tsize_t):Tcint;cdecl;external External_library name 'git_blob_lookup_prefix';
procedure git_blob_free(var blob:Tgit_blob);cdecl;external External_library name 'git_blob_free';
function git_blob_id(var blob:Tgit_blob):Pgit_oid;cdecl;external External_library name 'git_blob_id';
function git_blob_owner(var blob:Tgit_blob):Pgit_repository;cdecl;external External_library name 'git_blob_owner';
function git_blob_rawcontent(var blob:Tgit_blob):pointer;cdecl;external External_library name 'git_blob_rawcontent';
function git_blob_rawsize(var blob:Tgit_blob):Tgit_object_size_t;cdecl;external External_library name 'git_blob_rawsize';
type
  Tgit_blob_filter_flag_t =  Longint;
  Const
    GIT_BLOB_FILTER_CHECK_FOR_BINARY = 1 shl 0;
    GIT_BLOB_FILTER_NO_SYSTEM_ATTRIBUTES = 1 shl 1;
    GIT_BLOB_FILTER_ATTTRIBUTES_FROM_HEAD = 1 shl 2;

type
  Tgit_blob_filter_options = record
      version : Tcint;
      flags : Tuint32_t;
    end;

function git_blob_filter(var out:Tgit_buf; var blob:Tgit_blob; as_path:pcchar; var opts:Tgit_blob_filter_options):Tcint;cdecl;external External_library name 'git_blob_filter';
function git_blob_create_from_workdir(var id:Tgit_oid; var repo:Tgit_repository; relative_path:pcchar):Tcint;cdecl;external External_library name 'git_blob_create_from_workdir';
function git_blob_create_from_disk(var id:Tgit_oid; var repo:Tgit_repository; path:pcchar):Tcint;cdecl;external External_library name 'git_blob_create_from_disk';
function git_blob_create_from_stream(var out:Pgit_writestream; var repo:Tgit_repository; hintpath:pcchar):Tcint;cdecl;external External_library name 'git_blob_create_from_stream';
function git_blob_create_from_stream_commit(var out:Tgit_oid; var stream:Tgit_writestream):Tcint;cdecl;external External_library name 'git_blob_create_from_stream_commit';
function git_blob_create_from_buffer(var id:Tgit_oid; var repo:Tgit_repository; buffer:pointer; len:Tsize_t):Tcint;cdecl;external External_library name 'git_blob_create_from_buffer';
function git_blob_is_binary(var blob:Tgit_blob):Tcint;cdecl;external External_library name 'git_blob_is_binary';
function git_blob_dup(var out:Pgit_blob; var source:Tgit_blob):Tcint;cdecl;external External_library name 'git_blob_dup';
type
  Tgit_blame_flag_t =  Longint;
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
  Tgit_blame_options = record
      version : Tcuint;
      flags : Tuint32_t;
      min_match_characters : Tuint16_t;
      newest_commit : Tgit_oid;
      oldest_commit : Tgit_oid;
      min_line : Tsize_t;
      max_line : Tsize_t;
    end;

function git_blame_options_init(var opts:Tgit_blame_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_blame_options_init';
type
  Tgit_blame_hunk = record
      lines_in_hunk : Tsize_t;
      final_commit_id : Tgit_oid;
      final_start_line_number : Tsize_t;
      final_signature : Pgit_signature;
      orig_commit_id : Tgit_oid;
      orig_path : pcchar;
      orig_start_line_number : Tsize_t;
      orig_signature : Pgit_signature;
      boundary : Tcchar;
    end;

function git_blame_get_hunk_count(var blame:Tgit_blame):Tuint32_t;cdecl;external External_library name 'git_blame_get_hunk_count';
function git_blame_get_hunk_byindex(var blame:Tgit_blame; index:Tuint32_t):Pgit_blame_hunk;cdecl;external External_library name 'git_blame_get_hunk_byindex';
function git_blame_get_hunk_byline(var blame:Tgit_blame; lineno:Tsize_t):Pgit_blame_hunk;cdecl;external External_library name 'git_blame_get_hunk_byline';
function git_blame_file(var out:Pgit_blame; var repo:Tgit_repository; path:pcchar; var options:Tgit_blame_options):Tcint;cdecl;external External_library name 'git_blame_file';
function git_blame_buffer(var out:Pgit_blame; var reference:Tgit_blame; buffer:pcchar; buffer_len:Tsize_t):Tcint;cdecl;external External_library name 'git_blame_buffer';
procedure git_blame_free(var blame:Tgit_blame);cdecl;external External_library name 'git_blame_free';
function git_branch_create(var out:Pgit_reference; var repo:Tgit_repository; branch_name:pcchar; var target:Tgit_commit; force:Tcint):Tcint;cdecl;external External_library name 'git_branch_create';
function git_branch_create_from_annotated(var ref_out:Pgit_reference; var repository:Tgit_repository; branch_name:pcchar; var commit:Tgit_annotated_commit; force:Tcint):Tcint;cdecl;external External_library name 'git_branch_create_from_annotated';
function git_branch_delete(var branch:Tgit_reference):Tcint;cdecl;external External_library name 'git_branch_delete';


function git_branch_iterator_new(var out:Pgit_branch_iterator; var repo:Tgit_repository; list_flags:Tgit_branch_t):Tcint;cdecl;external External_library name 'git_branch_iterator_new';
function git_branch_next(var out:Pgit_reference; var out_type:Tgit_branch_t; var iter:Tgit_branch_iterator):Tcint;cdecl;external External_library name 'git_branch_next';
procedure git_branch_iterator_free(var iter:Tgit_branch_iterator);cdecl;external External_library name 'git_branch_iterator_free';
function git_branch_move(var out:Pgit_reference; var branch:Tgit_reference; new_branch_name:pcchar; force:Tcint):Tcint;cdecl;external External_library name 'git_branch_move';
function git_branch_lookup(var out:Pgit_reference; var repo:Tgit_repository; branch_name:pcchar; branch_type:Tgit_branch_t):Tcint;cdecl;external External_library name 'git_branch_lookup';
function git_branch_name(out:Ppcchar; var ref:Tgit_reference):Tcint;cdecl;external External_library name 'git_branch_name';
function git_branch_upstream(var out:Pgit_reference; var branch:Tgit_reference):Tcint;cdecl;external External_library name 'git_branch_upstream';
function git_branch_set_upstream(var branch:Tgit_reference; branch_name:pcchar):Tcint;cdecl;external External_library name 'git_branch_set_upstream';
function git_branch_upstream_name(var out:Tgit_buf; var repo:Tgit_repository; refname:pcchar):Tcint;cdecl;external External_library name 'git_branch_upstream_name';
function git_branch_is_head(var branch:Tgit_reference):Tcint;cdecl;external External_library name 'git_branch_is_head';
function git_branch_is_checked_out(var branch:Tgit_reference):Tcint;cdecl;external External_library name 'git_branch_is_checked_out';
function git_branch_remote_name(var out:Tgit_buf; var repo:Tgit_repository; refname:pcchar):Tcint;cdecl;external External_library name 'git_branch_remote_name';
function git_branch_upstream_remote(var buf:Tgit_buf; var repo:Tgit_repository; refname:pcchar):Tcint;cdecl;external External_library name 'git_branch_upstream_remote';
type
  Tgit_cert_t =  Longint;
  Const
    GIT_CERT_NONE = 0;
    GIT_CERT_X509 = 1;
    GIT_CERT_HOSTKEY_LIBSSH2 = 2;
    GIT_CERT_STRARRAY = 3;

type
  Tgit_cert = record
      cert_type : Tgit_cert_t;
    end;


  Tgit_transport_certificate_check_cb = function (var cert:Tgit_cert; valid:Tcint; host:pcchar; payload:pointer):Tcint;cdecl;

  Tgit_cert_ssh_t =  Longint;
  Const
    GIT_CERT_SSH_MD5 = 1 shl 0;
    GIT_CERT_SSH_SHA1 = 1 shl 1;
    GIT_CERT_SSH_SHA256 = 1 shl 2;

type
  Tgit_cert_hostkey = record
      parent : Tgit_cert;
      _type : Tgit_cert_ssh_t;
      hash_md5 : TArray0to15OfTcuchar;
      hash_sha1 : TArray0to19OfTcuchar;
      hash_sha256 : TArray0to31OfTcuchar;
    end;

  Tgit_cert_x509 = record
      parent : Tgit_cert;
      data : pointer;
      len : Tsize_t;
    end;

  Tgit_checkout_strategy_t =  Longint;
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
  Tgit_checkout_notify_t =  Longint;
  Const
    GIT_CHECKOUT_NOTIFY_NONE = 0;
    GIT_CHECKOUT_NOTIFY_CONFLICT = 1 shl 0;
    GIT_CHECKOUT_NOTIFY_DIRTY = 1 shl 1;
    GIT_CHECKOUT_NOTIFY_UPDATED = 1 shl 2;
    GIT_CHECKOUT_NOTIFY_UNTRACKED = 1 shl 3;
    GIT_CHECKOUT_NOTIFY_IGNORED = 1 shl 4;
    GIT_CHECKOUT_NOTIFY_ALL = $0FFFF;

type
  Tgit_checkout_perfdata = record
      mkdir_calls : Tsize_t;
      stat_calls : Tsize_t;
      chmod_calls : Tsize_t;
    end;

  Tgit_checkout_notify_cb = function (why:Tgit_checkout_notify_t; path:pcchar; var baseline:Tgit_diff_file; var target:Tgit_diff_file; var workdir:Tgit_diff_file; 
               payload:pointer):Tcint;cdecl;

  Tgit_checkout_progress_cb = procedure (path:pcchar; completed_steps:Tsize_t; total_steps:Tsize_t; payload:pointer);cdecl;

  Tgit_checkout_perfdata_cb = procedure (var perfdata:Tgit_checkout_perfdata; payload:pointer);cdecl;

  Tgit_checkout_options = record
      version : Tcuint;
      checkout_strategy : Tcuint;
      disable_filters : Tcint;
      dir_mode : Tcuint;
      file_mode : Tcuint;
      file_open_flags : Tcint;
      notify_flags : Tcuint;
      notify_cb : Tgit_checkout_notify_cb;
      notify_payload : pointer;
      progress_cb : Tgit_checkout_progress_cb;
      progress_payload : pointer;
      paths : Tgit_strarray;
      baseline : Pgit_tree;
      baseline_index : Pgit_index;
      target_directory : pcchar;
      ancestor_label : pcchar;
      our_label : pcchar;
      their_label : pcchar;
      perfdata_cb : Tgit_checkout_perfdata_cb;
      perfdata_payload : pointer;
    end;

function git_checkout_options_init(var opts:Tgit_checkout_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_checkout_options_init';
function git_checkout_head(var repo:Tgit_repository; var opts:Tgit_checkout_options):Tcint;cdecl;external External_library name 'git_checkout_head';
function git_checkout_index(var repo:Tgit_repository; var index:Tgit_index; var opts:Tgit_checkout_options):Tcint;cdecl;external External_library name 'git_checkout_index';
function git_checkout_tree(var repo:Tgit_repository; var treeish:Tgit_object; var opts:Tgit_checkout_options):Tcint;cdecl;external External_library name 'git_checkout_tree';
type
  Tgit_oidarray = record
      ids : Pgit_oid;
      count : Tsize_t;
    end;

procedure git_oidarray_free(var array:Tgit_oidarray);cdecl;external External_library name 'git_oidarray_free';
type

  Tgit_indexer_progress = record
      total_objects : Tcuint;
      indexed_objects : Tcuint;
      received_objects : Tcuint;
      local_objects : Tcuint;
      total_deltas : Tcuint;
      indexed_deltas : Tcuint;
      received_bytes : Tsize_t;
    end;

  Tgit_indexer_progress_cb = function (var stats:Tgit_indexer_progress; payload:pointer):Tcint;cdecl;

  Tgit_indexer_options = record
      version : Tcuint;
      progress_cb : Tgit_indexer_progress_cb;
      progress_cb_payload : pointer;
      verify : Tcuchar;
    end;

function git_indexer_options_init(var opts:Tgit_indexer_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_indexer_options_init';
function git_indexer_new(var out:Pgit_indexer; path:pcchar; mode:Tcuint; var odb:Tgit_odb; var opts:Tgit_indexer_options):Tcint;cdecl;external External_library name 'git_indexer_new';
function git_indexer_append(var idx:Tgit_indexer; data:pointer; size:Tsize_t; var stats:Tgit_indexer_progress):Tcint;cdecl;external External_library name 'git_indexer_append';
function git_indexer_commit(var idx:Tgit_indexer; var stats:Tgit_indexer_progress):Tcint;cdecl;external External_library name 'git_indexer_commit';
function git_indexer_hash(var idx:Tgit_indexer):Pgit_oid;cdecl;external External_library name 'git_indexer_hash';
procedure git_indexer_free(var idx:Tgit_indexer);cdecl;external External_library name 'git_indexer_free';
type
  Tgit_index_time = record
      seconds : Tint32_t;
      nanoseconds : Tuint32_t;
    end;

  Tgit_index_entry = record
      ctime : Tgit_index_time;
      mtime : Tgit_index_time;
      dev : Tuint32_t;
      ino : Tuint32_t;
      mode : Tuint32_t;
      uid : Tuint32_t;
      gid : Tuint32_t;
      file_size : Tuint32_t;
      id : Tgit_oid;
      flags : Tuint16_t;
      flags_extended : Tuint16_t;
      path : pcchar;
    end;

  Tgit_index_entry_flag_t =  Longint;
  Const
    GIT_INDEX_ENTRY_EXTENDED = $4000;
    GIT_INDEX_ENTRY_VALID = $8000;

type
  Tgit_index_entry_extended_flag_t =  Longint;
  Const
    GIT_INDEX_ENTRY_INTENT_TO_ADD = 1 shl 13;
    GIT_INDEX_ENTRY_SKIP_WORKTREE = 1 shl 14;
    GIT_INDEX_ENTRY_EXTENDED_FLAGS = GIT_INDEX_ENTRY_INTENT_TO_ADD or GIT_INDEX_ENTRY_SKIP_WORKTREE;
    GIT_INDEX_ENTRY_UPTODATE = 1 shl 2;

type
  Tgit_index_capability_t =  Longint;
  Const
    GIT_INDEX_CAPABILITY_IGNORE_CASE = 1;
    GIT_INDEX_CAPABILITY_NO_FILEMODE = 2;
    GIT_INDEX_CAPABILITY_NO_SYMLINKS = 4;
    GIT_INDEX_CAPABILITY_FROM_OWNER = -(1);

type

  Tgit_index_matched_path_cb = function (path:pcchar; matched_pathspec:pcchar; payload:pointer):Tcint;cdecl;

  Tgit_index_add_option_t =  Longint;
  Const
    GIT_INDEX_ADD_DEFAULT = 0;
    GIT_INDEX_ADD_FORCE = 1 shl 0;
    GIT_INDEX_ADD_DISABLE_PATHSPEC_MATCH = 1 shl 1;
    GIT_INDEX_ADD_CHECK_PATHSPEC = 1 shl 2;

type
  Tgit_index_stage_t =  Longint;
  Const
    GIT_INDEX_STAGE_ANY = -(1);
    GIT_INDEX_STAGE_NORMAL = 0;
    GIT_INDEX_STAGE_ANCESTOR = 1;
    GIT_INDEX_STAGE_OURS = 2;
    GIT_INDEX_STAGE_THEIRS = 3;


function git_index_open(var out:Pgit_index; index_path:pcchar):Tcint;cdecl;external External_library name 'git_index_open';
function git_index_new(var out:Pgit_index):Tcint;cdecl;external External_library name 'git_index_new';
procedure git_index_free(var index:Tgit_index);cdecl;external External_library name 'git_index_free';
function git_index_owner(var index:Tgit_index):Pgit_repository;cdecl;external External_library name 'git_index_owner';
function git_index_caps(var index:Tgit_index):Tcint;cdecl;external External_library name 'git_index_caps';
function git_index_set_caps(var index:Tgit_index; caps:Tcint):Tcint;cdecl;external External_library name 'git_index_set_caps';
function git_index_version(var index:Tgit_index):Tcuint;cdecl;external External_library name 'git_index_version';
function git_index_set_version(var index:Tgit_index; version:Tcuint):Tcint;cdecl;external External_library name 'git_index_set_version';
function git_index_read(var index:Tgit_index; force:Tcint):Tcint;cdecl;external External_library name 'git_index_read';
function git_index_write(var index:Tgit_index):Tcint;cdecl;external External_library name 'git_index_write';
function git_index_path(var index:Tgit_index):pcchar;cdecl;external External_library name 'git_index_path';
function git_index_checksum(var index:Tgit_index):Pgit_oid;cdecl;external External_library name 'git_index_checksum';
function git_index_read_tree(var index:Tgit_index; var tree:Tgit_tree):Tcint;cdecl;external External_library name 'git_index_read_tree';
function git_index_write_tree(var out:Tgit_oid; var index:Tgit_index):Tcint;cdecl;external External_library name 'git_index_write_tree';
function git_index_write_tree_to(var out:Tgit_oid; var index:Tgit_index; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_index_write_tree_to';
function git_index_entrycount(var index:Tgit_index):Tsize_t;cdecl;external External_library name 'git_index_entrycount';
function git_index_clear(var index:Tgit_index):Tcint;cdecl;external External_library name 'git_index_clear';
function git_index_get_byindex(var index:Tgit_index; n:Tsize_t):Pgit_index_entry;cdecl;external External_library name 'git_index_get_byindex';
function git_index_get_bypath(var index:Tgit_index; path:pcchar; stage:Tcint):Pgit_index_entry;cdecl;external External_library name 'git_index_get_bypath';
function git_index_remove(var index:Tgit_index; path:pcchar; stage:Tcint):Tcint;cdecl;external External_library name 'git_index_remove';
function git_index_remove_directory(var index:Tgit_index; dir:pcchar; stage:Tcint):Tcint;cdecl;external External_library name 'git_index_remove_directory';
function git_index_add(var index:Tgit_index; var source_entry:Tgit_index_entry):Tcint;cdecl;external External_library name 'git_index_add';
function git_index_entry_stage(var entry:Tgit_index_entry):Tcint;cdecl;external External_library name 'git_index_entry_stage';
function git_index_entry_is_conflict(var entry:Tgit_index_entry):Tcint;cdecl;external External_library name 'git_index_entry_is_conflict';
function git_index_iterator_new(var iterator_out:Pgit_index_iterator; var index:Tgit_index):Tcint;cdecl;external External_library name 'git_index_iterator_new';
function git_index_iterator_next(var out:Pgit_index_entry; var iterator:Tgit_index_iterator):Tcint;cdecl;external External_library name 'git_index_iterator_next';
procedure git_index_iterator_free(var iterator:Tgit_index_iterator);cdecl;external External_library name 'git_index_iterator_free';
function git_index_add_bypath(var index:Tgit_index; path:pcchar):Tcint;cdecl;external External_library name 'git_index_add_bypath';
function git_index_add_from_buffer(var index:Tgit_index; var entry:Tgit_index_entry; buffer:pointer; len:Tsize_t):Tcint;cdecl;external External_library name 'git_index_add_from_buffer';
function git_index_remove_bypath(var index:Tgit_index; path:pcchar):Tcint;cdecl;external External_library name 'git_index_remove_bypath';
function git_index_add_all(var index:Tgit_index; var pathspec:Tgit_strarray; flags:Tcuint; callback:Tgit_index_matched_path_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_index_add_all';
function git_index_remove_all(var index:Tgit_index; var pathspec:Tgit_strarray; callback:Tgit_index_matched_path_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_index_remove_all';
function git_index_update_all(var index:Tgit_index; var pathspec:Tgit_strarray; callback:Tgit_index_matched_path_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_index_update_all';
function git_index_find(var at_pos:Tsize_t; var index:Tgit_index; path:pcchar):Tcint;cdecl;external External_library name 'git_index_find';
function git_index_find_prefix(var at_pos:Tsize_t; var index:Tgit_index; prefix:pcchar):Tcint;cdecl;external External_library name 'git_index_find_prefix';
function git_index_conflict_add(var index:Tgit_index; var ancestor_entry:Tgit_index_entry; var our_entry:Tgit_index_entry; var their_entry:Tgit_index_entry):Tcint;cdecl;external External_library name 'git_index_conflict_add';
function git_index_conflict_get(var ancestor_out:Pgit_index_entry; var our_out:Pgit_index_entry; var their_out:Pgit_index_entry; var index:Tgit_index; path:pcchar):Tcint;cdecl;external External_library name 'git_index_conflict_get';
function git_index_conflict_remove(var index:Tgit_index; path:pcchar):Tcint;cdecl;external External_library name 'git_index_conflict_remove';
function git_index_conflict_cleanup(var index:Tgit_index):Tcint;cdecl;external External_library name 'git_index_conflict_cleanup';
function git_index_has_conflicts(var index:Tgit_index):Tcint;cdecl;external External_library name 'git_index_has_conflicts';
function git_index_conflict_iterator_new(var iterator_out:Pgit_index_conflict_iterator; var index:Tgit_index):Tcint;cdecl;external External_library name 'git_index_conflict_iterator_new';
function git_index_conflict_next(var ancestor_out:Pgit_index_entry; var our_out:Pgit_index_entry; var their_out:Pgit_index_entry; var iterator:Tgit_index_conflict_iterator):Tcint;cdecl;external External_library name 'git_index_conflict_next';
procedure git_index_conflict_iterator_free(var iterator:Tgit_index_conflict_iterator);cdecl;external External_library name 'git_index_conflict_iterator_free';
type
  Tgit_merge_file_input = record
      version : Tcuint;
      ptr : pcchar;
      size : Tsize_t;
      path : pcchar;
      mode : Tcuint;
    end;

function git_merge_file_input_init(var opts:Tgit_merge_file_input; version:Tcuint):Tcint;cdecl;external External_library name 'git_merge_file_input_init';
type
  Tgit_merge_flag_t =  Longint;
  Const
    GIT_MERGE_FIND_RENAMES = 1 shl 0;
    GIT_MERGE_FAIL_ON_CONFLICT = 1 shl 1;
    GIT_MERGE_SKIP_REUC = 1 shl 2;
    GIT_MERGE_NO_RECURSIVE = 1 shl 3;

type
  Tgit_merge_file_favor_t =  Longint;
  Const
    GIT_MERGE_FILE_FAVOR_NORMAL = 0;
    GIT_MERGE_FILE_FAVOR_OURS = 1;
    GIT_MERGE_FILE_FAVOR_THEIRS = 2;
    GIT_MERGE_FILE_FAVOR_UNION = 3;

type
  Tgit_merge_file_flag_t =  Longint;
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
  Tgit_merge_file_options = record
      version : Tcuint;
      ancestor_label : pcchar;
      our_label : pcchar;
      their_label : pcchar;
      favor : Tgit_merge_file_favor_t;
      flags : Tuint32_t;
      marker_size : Tcushort;
    end;

function git_merge_file_options_init(var opts:Tgit_merge_file_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_merge_file_options_init';
type
  Tgit_merge_file_result = record
      automergeable : Tcuint;
      path : pcchar;
      mode : Tcuint;
      ptr : pcchar;
      len : Tsize_t;
    end;

  Tgit_merge_options = record
      version : Tcuint;
      flags : Tuint32_t;
      rename_threshold : Tcuint;
      target_limit : Tcuint;
      metric : Pgit_diff_similarity_metric;
      recursion_limit : Tcuint;
      default_driver : pcchar;
      file_favor : Tgit_merge_file_favor_t;
      file_flags : Tuint32_t;
    end;

function git_merge_options_init(var opts:Tgit_merge_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_merge_options_init';
type
  Tgit_merge_analysis_t =  Longint;
  Const
    GIT_MERGE_ANALYSIS_NONE = 0;
    GIT_MERGE_ANALYSIS_NORMAL = 1 shl 0;
    GIT_MERGE_ANALYSIS_UP_TO_DATE = 1 shl 1;
    GIT_MERGE_ANALYSIS_FASTFORWARD = 1 shl 2;
    GIT_MERGE_ANALYSIS_UNBORN = 1 shl 3;

type
  Tgit_merge_preference_t =  Longint;
  Const
    GIT_MERGE_PREFERENCE_NONE = 0;
    GIT_MERGE_PREFERENCE_NO_FASTFORWARD = 1 shl 0;
    GIT_MERGE_PREFERENCE_FASTFORWARD_ONLY = 1 shl 1;


function git_merge_analysis(var analysis_out:Tgit_merge_analysis_t; var preference_out:Tgit_merge_preference_t; var repo:Tgit_repository; var their_heads:Pgit_annotated_commit; their_heads_len:Tsize_t):Tcint;cdecl;external External_library name 'git_merge_analysis';
function git_merge_analysis_for_ref(var analysis_out:Tgit_merge_analysis_t; var preference_out:Tgit_merge_preference_t; var repo:Tgit_repository; var our_ref:Tgit_reference; var their_heads:Pgit_annotated_commit; 
           their_heads_len:Tsize_t):Tcint;cdecl;external External_library name 'git_merge_analysis_for_ref';
function git_merge_base(var out:Tgit_oid; var repo:Tgit_repository; var one:Tgit_oid; var two:Tgit_oid):Tcint;cdecl;external External_library name 'git_merge_base';
function git_merge_bases(var out:Tgit_oidarray; var repo:Tgit_repository; var one:Tgit_oid; var two:Tgit_oid):Tcint;cdecl;external External_library name 'git_merge_bases';
function git_merge_base_many(var out:Tgit_oid; var repo:Tgit_repository; length:Tsize_t; input_array:Pgit_oid):Tcint;cdecl;external External_library name 'git_merge_base_many';
function git_merge_bases_many(var out:Tgit_oidarray; var repo:Tgit_repository; length:Tsize_t; input_array:Pgit_oid):Tcint;cdecl;external External_library name 'git_merge_bases_many';
function git_merge_base_octopus(var out:Tgit_oid; var repo:Tgit_repository; length:Tsize_t; input_array:Pgit_oid):Tcint;cdecl;external External_library name 'git_merge_base_octopus';
function git_merge_file(var out:Tgit_merge_file_result; var ancestor:Tgit_merge_file_input; var ours:Tgit_merge_file_input; var theirs:Tgit_merge_file_input; var opts:Tgit_merge_file_options):Tcint;cdecl;external External_library name 'git_merge_file';
function git_merge_file_from_index(var out:Tgit_merge_file_result; var repo:Tgit_repository; var ancestor:Tgit_index_entry; var ours:Tgit_index_entry; var theirs:Tgit_index_entry; 
           var opts:Tgit_merge_file_options):Tcint;cdecl;external External_library name 'git_merge_file_from_index';
procedure git_merge_file_result_free(var result:Tgit_merge_file_result);cdecl;external External_library name 'git_merge_file_result_free';
function git_merge_trees(var out:Pgit_index; var repo:Tgit_repository; var ancestor_tree:Tgit_tree; var our_tree:Tgit_tree; var their_tree:Tgit_tree; 
           var opts:Tgit_merge_options):Tcint;cdecl;external External_library name 'git_merge_trees';
function git_merge_commits(var out:Pgit_index; var repo:Tgit_repository; var our_commit:Tgit_commit; var their_commit:Tgit_commit; var opts:Tgit_merge_options):Tcint;cdecl;external External_library name 'git_merge_commits';
function git_merge(var repo:Tgit_repository; var their_heads:Pgit_annotated_commit; their_heads_len:Tsize_t; var merge_opts:Tgit_merge_options; var checkout_opts:Tgit_checkout_options):Tcint;cdecl;external External_library name 'git_merge';
type
  Tgit_cherrypick_options = record
      version : Tcuint;
      mainline : Tcuint;
      merge_opts : Tgit_merge_options;
      checkout_opts : Tgit_checkout_options;
    end;

function git_cherrypick_options_init(var opts:Tgit_cherrypick_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_cherrypick_options_init';
function git_cherrypick_commit(var out:Pgit_index; var repo:Tgit_repository; var cherrypick_commit:Tgit_commit; var our_commit:Tgit_commit; mainline:Tcuint; 
           var merge_options:Tgit_merge_options):Tcint;cdecl;external External_library name 'git_cherrypick_commit';
function git_cherrypick(var repo:Tgit_repository; var commit:Tgit_commit; var cherrypick_options:Tgit_cherrypick_options):Tcint;cdecl;external External_library name 'git_cherrypick';
type
  Tgit_direction =  Longint;
  Const
    GIT_DIRECTION_FETCH = 0;
    GIT_DIRECTION_PUSH = 1;

type
  Tgit_remote_head = record
      local : Tcint;
      oid : Tgit_oid;
      loid : Tgit_oid;
      name : pcchar;
      symref_target : pcchar;
    end;


function git_refspec_parse(var refspec:Pgit_refspec; input:pcchar; is_fetch:Tcint):Tcint;cdecl;external External_library name 'git_refspec_parse';
procedure git_refspec_free(var refspec:Tgit_refspec);cdecl;external External_library name 'git_refspec_free';
function git_refspec_src(var refspec:Tgit_refspec):pcchar;cdecl;external External_library name 'git_refspec_src';
function git_refspec_dst(var refspec:Tgit_refspec):pcchar;cdecl;external External_library name 'git_refspec_dst';
function git_refspec_string(var refspec:Tgit_refspec):pcchar;cdecl;external External_library name 'git_refspec_string';
function git_refspec_force(var refspec:Tgit_refspec):Tcint;cdecl;external External_library name 'git_refspec_force';
function git_refspec_direction(var spec:Tgit_refspec):Tgit_direction;cdecl;external External_library name 'git_refspec_direction';
function git_refspec_src_matches(var refspec:Tgit_refspec; refname:pcchar):Tcint;cdecl;external External_library name 'git_refspec_src_matches';
function git_refspec_dst_matches(var refspec:Tgit_refspec; refname:pcchar):Tcint;cdecl;external External_library name 'git_refspec_dst_matches';
function git_refspec_transform(var out:Tgit_buf; var spec:Tgit_refspec; name:pcchar):Tcint;cdecl;external External_library name 'git_refspec_transform';
function git_refspec_rtransform(var out:Tgit_buf; var spec:Tgit_refspec; name:pcchar):Tcint;cdecl;external External_library name 'git_refspec_rtransform';
type
  Tgit_credential_t =  Longint;
  Const
    GIT_CREDENTIAL_USERPASS_PLAINTEXT = 1 shl 0;
    GIT_CREDENTIAL_SSH_KEY = 1 shl 1;
    GIT_CREDENTIAL_SSH_CUSTOM = 1 shl 2;
    GIT_CREDENTIAL_DEFAULT = 1 shl 3;
    GIT_CREDENTIAL_SSH_INTERACTIVE = 1 shl 4;
    GIT_CREDENTIAL_USERNAME = 1 shl 5;
    GIT_CREDENTIAL_SSH_MEMORY = 1 shl 6;

type
  Tgit_credential = Tgit_credential_default;

  Tgit_credential_acquire_cb = function (var out:Pgit_credential; url:pcchar; username_from_url:pcchar; allowed_types:Tcuint; payload:pointer):Tcint;cdecl;

procedure git_credential_free(var cred:Tgit_credential);cdecl;external External_library name 'git_credential_free';
function git_credential_has_username(var cred:Tgit_credential):Tcint;cdecl;external External_library name 'git_credential_has_username';
function git_credential_get_username(var cred:Tgit_credential):pcchar;cdecl;external External_library name 'git_credential_get_username';
function git_credential_userpass_plaintext_new(var out:Pgit_credential; username:pcchar; password:pcchar):Tcint;cdecl;external External_library name 'git_credential_userpass_plaintext_new';
function git_credential_default_new(var out:Pgit_credential):Tcint;cdecl;external External_library name 'git_credential_default_new';
function git_credential_username_new(var out:Pgit_credential; username:pcchar):Tcint;cdecl;external External_library name 'git_credential_username_new';
function git_credential_ssh_key_new(var out:Pgit_credential; username:pcchar; publickey:pcchar; privatekey:pcchar; passphrase:pcchar):Tcint;cdecl;external External_library name 'git_credential_ssh_key_new';
function git_credential_ssh_key_memory_new(var out:Pgit_credential; username:pcchar; publickey:pcchar; privatekey:pcchar; passphrase:pcchar):Tcint;cdecl;external External_library name 'git_credential_ssh_key_memory_new';
type

  Tgit_credential_ssh_interactive_cb = procedure (name:pcchar; name_len:Tcint; instruction:pcchar; instruction_len:Tcint; num_prompts:Tcint; 
                var prompts:TLIBSSH2_USERAUTH_KBDINT_PROMPT; var responses:TLIBSSH2_USERAUTH_KBDINT_RESPONSE; abstract:Ppointer);cdecl;

function git_credential_ssh_interactive_new(var out:Pgit_credential; username:pcchar; prompt_callback:Tgit_credential_ssh_interactive_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_credential_ssh_interactive_new';
function git_credential_ssh_key_from_agent(var out:Pgit_credential; username:pcchar):Tcint;cdecl;external External_library name 'git_credential_ssh_key_from_agent';
type

  Tgit_credential_sign_cb = function (var session:TLIBSSH2_SESSION; sig:Ppcuchar; var sig_len:Tsize_t; data:pcuchar; data_len:Tsize_t; 
               abstract:Ppointer):Tcint;cdecl;

function git_credential_ssh_custom_new(var out:Pgit_credential; username:pcchar; publickey:pcchar; publickey_len:Tsize_t; sign_callback:Tgit_credential_sign_cb; 
           payload:pointer):Tcint;cdecl;external External_library name 'git_credential_ssh_custom_new';
type

  Tgit_transport_message_cb = function (str:pcchar; len:Tcint; payload:pointer):Tcint;cdecl;

  Tgit_transport_cb = function (var out:Pgit_transport; var owner:Tgit_remote; param:pointer):Tcint;cdecl;

  Tgit_packbuilder_stage_t =  Longint;
  Const
    GIT_PACKBUILDER_ADDING_OBJECTS = 0;
    GIT_PACKBUILDER_DELTAFICATION = 1;


function git_packbuilder_new(var out:Pgit_packbuilder; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_packbuilder_new';
function git_packbuilder_set_threads(var pb:Tgit_packbuilder; n:Tcuint):Tcuint;cdecl;external External_library name 'git_packbuilder_set_threads';
function git_packbuilder_insert(var pb:Tgit_packbuilder; var id:Tgit_oid; name:pcchar):Tcint;cdecl;external External_library name 'git_packbuilder_insert';
function git_packbuilder_insert_tree(var pb:Tgit_packbuilder; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_packbuilder_insert_tree';
function git_packbuilder_insert_commit(var pb:Tgit_packbuilder; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_packbuilder_insert_commit';
function git_packbuilder_insert_walk(var pb:Tgit_packbuilder; var walk:Tgit_revwalk):Tcint;cdecl;external External_library name 'git_packbuilder_insert_walk';
function git_packbuilder_insert_recur(var pb:Tgit_packbuilder; var id:Tgit_oid; name:pcchar):Tcint;cdecl;external External_library name 'git_packbuilder_insert_recur';
function git_packbuilder_write_buf(var buf:Tgit_buf; var pb:Tgit_packbuilder):Tcint;cdecl;external External_library name 'git_packbuilder_write_buf';
function git_packbuilder_write(var pb:Tgit_packbuilder; path:pcchar; mode:Tcuint; progress_cb:Tgit_indexer_progress_cb; progress_cb_payload:pointer):Tcint;cdecl;external External_library name 'git_packbuilder_write';
function git_packbuilder_hash(var pb:Tgit_packbuilder):Pgit_oid;cdecl;external External_library name 'git_packbuilder_hash';
type

  Tgit_packbuilder_foreach_cb = function (buf:pointer; size:Tsize_t; payload:pointer):Tcint;cdecl;

function git_packbuilder_foreach(var pb:Tgit_packbuilder; cb:Tgit_packbuilder_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_packbuilder_foreach';
function git_packbuilder_object_count(var pb:Tgit_packbuilder):Tsize_t;cdecl;external External_library name 'git_packbuilder_object_count';
function git_packbuilder_written(var pb:Tgit_packbuilder):Tsize_t;cdecl;external External_library name 'git_packbuilder_written';
type

  Tgit_packbuilder_progress = function (stage:Tcint; current:Tuint32_t; total:Tuint32_t; payload:pointer):Tcint;cdecl;

function git_packbuilder_set_callbacks(var pb:Tgit_packbuilder; progress_cb:Tgit_packbuilder_progress; progress_cb_payload:pointer):Tcint;cdecl;external External_library name 'git_packbuilder_set_callbacks';
procedure git_packbuilder_free(var pb:Tgit_packbuilder);cdecl;external External_library name 'git_packbuilder_free';
type
  Tgit_proxy_t =  Longint;
  Const
    GIT_PROXY_NONE = 0;
    GIT_PROXY_AUTO = 1;
    GIT_PROXY_SPECIFIED = 2;

type
  Tgit_proxy_options = record
      version : Tcuint;
      _type : Tgit_proxy_t;
      url : pcchar;
      credentials : Tgit_credential_acquire_cb;
      certificate_check : Tgit_transport_certificate_check_cb;
      payload : pointer;
    end;

function git_proxy_options_init(var opts:Tgit_proxy_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_proxy_options_init';
function git_remote_create(var out:Pgit_remote; var repo:Tgit_repository; name:pcchar; url:pcchar):Tcint;cdecl;external External_library name 'git_remote_create';
type
  Tgit_remote_create_flags =  Longint;
  Const
    GIT_REMOTE_CREATE_SKIP_INSTEADOF = 1 shl 0;
    GIT_REMOTE_CREATE_SKIP_DEFAULT_FETCHSPEC = 1 shl 1;

type
  Tgit_remote_create_options = record
      version : Tcuint;
      repository : Pgit_repository;
      name : pcchar;
      fetchspec : pcchar;
      flags : Tcuint;
    end;

function git_remote_create_options_init(var opts:Tgit_remote_create_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_remote_create_options_init';
function git_remote_create_with_opts(var out:Pgit_remote; url:pcchar; var opts:Tgit_remote_create_options):Tcint;cdecl;external External_library name 'git_remote_create_with_opts';
function git_remote_create_with_fetchspec(var out:Pgit_remote; var repo:Tgit_repository; name:pcchar; url:pcchar; fetch:pcchar):Tcint;cdecl;external External_library name 'git_remote_create_with_fetchspec';
function git_remote_create_anonymous(var out:Pgit_remote; var repo:Tgit_repository; url:pcchar):Tcint;cdecl;external External_library name 'git_remote_create_anonymous';
function git_remote_create_detached(var out:Pgit_remote; url:pcchar):Tcint;cdecl;external External_library name 'git_remote_create_detached';
function git_remote_lookup(var out:Pgit_remote; var repo:Tgit_repository; name:pcchar):Tcint;cdecl;external External_library name 'git_remote_lookup';
function git_remote_dup(var dest:Pgit_remote; var source:Tgit_remote):Tcint;cdecl;external External_library name 'git_remote_dup';
function git_remote_owner(var remote:Tgit_remote):Pgit_repository;cdecl;external External_library name 'git_remote_owner';
function git_remote_name(var remote:Tgit_remote):pcchar;cdecl;external External_library name 'git_remote_name';
function git_remote_url(var remote:Tgit_remote):pcchar;cdecl;external External_library name 'git_remote_url';
function git_remote_pushurl(var remote:Tgit_remote):pcchar;cdecl;external External_library name 'git_remote_pushurl';
function git_remote_set_url(var repo:Tgit_repository; remote:pcchar; url:pcchar):Tcint;cdecl;external External_library name 'git_remote_set_url';
function git_remote_set_pushurl(var repo:Tgit_repository; remote:pcchar; url:pcchar):Tcint;cdecl;external External_library name 'git_remote_set_pushurl';
function git_remote_add_fetch(var repo:Tgit_repository; remote:pcchar; refspec:pcchar):Tcint;cdecl;external External_library name 'git_remote_add_fetch';
function git_remote_get_fetch_refspecs(var array:Tgit_strarray; var remote:Tgit_remote):Tcint;cdecl;external External_library name 'git_remote_get_fetch_refspecs';
function git_remote_add_push(var repo:Tgit_repository; remote:pcchar; refspec:pcchar):Tcint;cdecl;external External_library name 'git_remote_add_push';
function git_remote_get_push_refspecs(var array:Tgit_strarray; var remote:Tgit_remote):Tcint;cdecl;external External_library name 'git_remote_get_push_refspecs';
function git_remote_refspec_count(var remote:Tgit_remote):Tsize_t;cdecl;external External_library name 'git_remote_refspec_count';
function git_remote_get_refspec(var remote:Tgit_remote; n:Tsize_t):Pgit_refspec;cdecl;external External_library name 'git_remote_get_refspec';
function git_remote_connect(var remote:Tgit_remote; direction:Tgit_direction; var callbacks:Tgit_remote_callbacks; var proxy_opts:Tgit_proxy_options; var custom_headers:Tgit_strarray):Tcint;cdecl;external External_library name 'git_remote_connect';
function git_remote_ls(var out:PPgit_remote_head; var size:Tsize_t; var remote:Tgit_remote):Tcint;cdecl;external External_library name 'git_remote_ls';
function git_remote_connected(var remote:Tgit_remote):Tcint;cdecl;external External_library name 'git_remote_connected';
function git_remote_stop(var remote:Tgit_remote):Tcint;cdecl;external External_library name 'git_remote_stop';
function git_remote_disconnect(var remote:Tgit_remote):Tcint;cdecl;external External_library name 'git_remote_disconnect';
procedure git_remote_free(var remote:Tgit_remote);cdecl;external External_library name 'git_remote_free';
function git_remote_list(var out:Tgit_strarray; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_remote_list';
type
  Tgit_remote_completion_t =  Longint;
  Const
    GIT_REMOTE_COMPLETION_DOWNLOAD = 0;
    GIT_REMOTE_COMPLETION_INDEXING = 1;
    GIT_REMOTE_COMPLETION_ERROR = 2;

type

  Tgit_push_transfer_progress_cb = function (current:Tcuint; total:Tcuint; bytes:Tsize_t; payload:pointer):Tcint;cdecl;

  Tgit_push_update = record
      src_refname : pcchar;
      dst_refname : pcchar;
      src : Tgit_oid;
      dst : Tgit_oid;
    end;

  Tgit_push_negotiation = function (var updates:Pgit_push_update; len:Tsize_t; payload:pointer):Tcint;cdecl;

  Tgit_push_update_reference_cb = function (refname:pcchar; status:pcchar; data:pointer):Tcint;cdecl;

  Tgit_url_resolve_cb = function (var url_resolved:Tgit_buf; url:pcchar; direction:Tcint; payload:pointer):Tcint;cdecl;
  Tgit_remote_callbacks = record
      version : Tcuint;cdecl;
      sideband_progress : Tgit_transport_message_cb;
      completion : TFunction_typeTgit_remote_completion_tDataPointerTcint;cdecl;
      credentials : Tgit_credential_acquire_cb;
      certificate_check : Tgit_transport_certificate_check_cb;
      transfer_progress : Tgit_indexer_progress_cb;
      update_tips : TFunctionRefnamePccharVarATgit_oidVarBTgit_oidDataPointerTcint;cdecl;
      pack_progress : Tgit_packbuilder_progress;
      push_transfer_progress : Tgit_push_transfer_progress_cb;
      push_update_reference : Tgit_push_update_reference_cb;
      push_negotiation : Tgit_push_negotiation;
      transport : Tgit_transport_cb;
      payload : pointer;
      resolve_url : Tgit_url_resolve_cb;
    end;


function git_remote_init_callbacks(var opts:Tgit_remote_callbacks; version:Tcuint):Tcint;cdecl;external External_library name 'git_remote_init_callbacks';
type
  Tgit_fetch_prune_t =  Longint;
  Const
    GIT_FETCH_PRUNE_UNSPECIFIED = 0;
    GIT_FETCH_PRUNE = 1;
    GIT_FETCH_NO_PRUNE = 2;

type
  Tgit_remote_autotag_option_t =  Longint;
  Const
    GIT_REMOTE_DOWNLOAD_TAGS_UNSPECIFIED = 0;
    GIT_REMOTE_DOWNLOAD_TAGS_AUTO = 1;
    GIT_REMOTE_DOWNLOAD_TAGS_NONE = 2;
    GIT_REMOTE_DOWNLOAD_TAGS_ALL = 3;

type
  Tgit_fetch_options = record
      version : Tcint;
      callbacks : Tgit_remote_callbacks;
      prune : Tgit_fetch_prune_t;
      update_fetchhead : Tcint;
      download_tags : Tgit_remote_autotag_option_t;
      proxy_opts : Tgit_proxy_options;
      custom_headers : Tgit_strarray;
    end;

function git_fetch_options_init(var opts:Tgit_fetch_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_fetch_options_init';
type
  Tgit_push_options = record
      version : Tcuint;
      pb_parallelism : Tcuint;
      callbacks : Tgit_remote_callbacks;
      proxy_opts : Tgit_proxy_options;
      custom_headers : Tgit_strarray;
    end;

function git_push_options_init(var opts:Tgit_push_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_push_options_init';
function git_remote_download(var remote:Tgit_remote; var refspecs:Tgit_strarray; var opts:Tgit_fetch_options):Tcint;cdecl;external External_library name 'git_remote_download';
function git_remote_upload(var remote:Tgit_remote; var refspecs:Tgit_strarray; var opts:Tgit_push_options):Tcint;cdecl;external External_library name 'git_remote_upload';
function git_remote_update_tips(var remote:Tgit_remote; var callbacks:Tgit_remote_callbacks; update_fetchhead:Tcint; download_tags:Tgit_remote_autotag_option_t; reflog_message:pcchar):Tcint;cdecl;external External_library name 'git_remote_update_tips';
function git_remote_fetch(var remote:Tgit_remote; var refspecs:Tgit_strarray; var opts:Tgit_fetch_options; reflog_message:pcchar):Tcint;cdecl;external External_library name 'git_remote_fetch';
function git_remote_prune(var remote:Tgit_remote; var callbacks:Tgit_remote_callbacks):Tcint;cdecl;external External_library name 'git_remote_prune';
function git_remote_push(var remote:Tgit_remote; var refspecs:Tgit_strarray; var opts:Tgit_push_options):Tcint;cdecl;external External_library name 'git_remote_push';
function git_remote_stats(var remote:Tgit_remote):Pgit_indexer_progress;cdecl;external External_library name 'git_remote_stats';
function git_remote_autotag(var remote:Tgit_remote):Tgit_remote_autotag_option_t;cdecl;external External_library name 'git_remote_autotag';
function git_remote_set_autotag(var repo:Tgit_repository; remote:pcchar; value:Tgit_remote_autotag_option_t):Tcint;cdecl;external External_library name 'git_remote_set_autotag';
function git_remote_prune_refs(var remote:Tgit_remote):Tcint;cdecl;external External_library name 'git_remote_prune_refs';
function git_remote_rename(var problems:Tgit_strarray; var repo:Tgit_repository; name:pcchar; new_name:pcchar):Tcint;cdecl;external External_library name 'git_remote_rename';
function git_remote_is_valid_name(remote_name:pcchar):Tcint;cdecl;external External_library name 'git_remote_is_valid_name';
function git_remote_delete(var repo:Tgit_repository; name:pcchar):Tcint;cdecl;external External_library name 'git_remote_delete';
function git_remote_default_branch(var out:Tgit_buf; var remote:Tgit_remote):Tcint;cdecl;external External_library name 'git_remote_default_branch';
type
  Tgit_clone_local_t =  Longint;
  Const
    GIT_CLONE_LOCAL_AUTO = 0;
    GIT_CLONE_LOCAL = 1;
    GIT_CLONE_NO_LOCAL = 2;
    GIT_CLONE_LOCAL_NO_LINKS = 3;

type

  Tgit_remote_create_cb = function (var out:Pgit_remote; var repo:Tgit_repository; name:pcchar; url:pcchar; payload:pointer):Tcint;cdecl;

  Tgit_repository_create_cb = function (var out:Pgit_repository; path:pcchar; bare:Tcint; payload:pointer):Tcint;cdecl;

  Tgit_clone_options = record
      version : Tcuint;
      checkout_opts : Tgit_checkout_options;
      fetch_opts : Tgit_fetch_options;
      bare : Tcint;
      local : Tgit_clone_local_t;
      checkout_branch : pcchar;
      repository_cb : Tgit_repository_create_cb;
      repository_cb_payload : pointer;
      remote_cb : Tgit_remote_create_cb;
      remote_cb_payload : pointer;
    end;

function git_clone_options_init(var opts:Tgit_clone_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_clone_options_init';
function git_clone(var out:Pgit_repository; url:pcchar; local_path:pcchar; var options:Tgit_clone_options):Tcint;cdecl;external External_library name 'git_clone';
function git_commit_lookup(var commit:Pgit_commit; var repo:Tgit_repository; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_commit_lookup';
function git_commit_lookup_prefix(var commit:Pgit_commit; var repo:Tgit_repository; var id:Tgit_oid; len:Tsize_t):Tcint;cdecl;external External_library name 'git_commit_lookup_prefix';
procedure git_commit_free(var commit:Tgit_commit);cdecl;external External_library name 'git_commit_free';
function git_commit_id(var commit:Tgit_commit):Pgit_oid;cdecl;external External_library name 'git_commit_id';
function git_commit_owner(var commit:Tgit_commit):Pgit_repository;cdecl;external External_library name 'git_commit_owner';
function git_commit_message_encoding(var commit:Tgit_commit):pcchar;cdecl;external External_library name 'git_commit_message_encoding';
function git_commit_message(var commit:Tgit_commit):pcchar;cdecl;external External_library name 'git_commit_message';
function git_commit_message_raw(var commit:Tgit_commit):pcchar;cdecl;external External_library name 'git_commit_message_raw';
function git_commit_summary(var commit:Tgit_commit):pcchar;cdecl;external External_library name 'git_commit_summary';
function git_commit_body(var commit:Tgit_commit):pcchar;cdecl;external External_library name 'git_commit_body';
function git_commit_time(var commit:Tgit_commit):Tgit_time_t;cdecl;external External_library name 'git_commit_time';
function git_commit_time_offset(var commit:Tgit_commit):Tcint;cdecl;external External_library name 'git_commit_time_offset';
function git_commit_committer(var commit:Tgit_commit):Pgit_signature;cdecl;external External_library name 'git_commit_committer';
function git_commit_author(var commit:Tgit_commit):Pgit_signature;cdecl;external External_library name 'git_commit_author';
function git_commit_committer_with_mailmap(var out:Pgit_signature; var commit:Tgit_commit; var mailmap:Tgit_mailmap):Tcint;cdecl;external External_library name 'git_commit_committer_with_mailmap';
function git_commit_author_with_mailmap(var out:Pgit_signature; var commit:Tgit_commit; var mailmap:Tgit_mailmap):Tcint;cdecl;external External_library name 'git_commit_author_with_mailmap';
function git_commit_raw_header(var commit:Tgit_commit):pcchar;cdecl;external External_library name 'git_commit_raw_header';
function git_commit_tree(var tree_out:Pgit_tree; var commit:Tgit_commit):Tcint;cdecl;external External_library name 'git_commit_tree';
function git_commit_tree_id(var commit:Tgit_commit):Pgit_oid;cdecl;external External_library name 'git_commit_tree_id';
function git_commit_parentcount(var commit:Tgit_commit):Tcuint;cdecl;external External_library name 'git_commit_parentcount';
function git_commit_parent(var out:Pgit_commit; var commit:Tgit_commit; n:Tcuint):Tcint;cdecl;external External_library name 'git_commit_parent';
function git_commit_parent_id(var commit:Tgit_commit; n:Tcuint):Pgit_oid;cdecl;external External_library name 'git_commit_parent_id';
function git_commit_nth_gen_ancestor(var ancestor:Pgit_commit; var commit:Tgit_commit; n:Tcuint):Tcint;cdecl;external External_library name 'git_commit_nth_gen_ancestor';
function git_commit_header_field(var out:Tgit_buf; var commit:Tgit_commit; field:pcchar):Tcint;cdecl;external External_library name 'git_commit_header_field';
function git_commit_extract_signature(var signature:Tgit_buf; var signed_data:Tgit_buf; var repo:Tgit_repository; var commit_id:Tgit_oid; field:pcchar):Tcint;cdecl;external External_library name 'git_commit_extract_signature';
function git_commit_create(var id:Tgit_oid; var repo:Tgit_repository; update_ref:pcchar; var author:Tgit_signature; var committer:Tgit_signature; 
           message_encoding:pcchar; message:pcchar; var tree:Tgit_tree; parent_count:Tsize_t; var parents:Pgit_commit):Tcint;cdecl;external External_library name 'git_commit_create';
function git_commit_create_v(var id:Tgit_oid; var repo:Tgit_repository; update_ref:pcchar; var author:Tgit_signature; var committer:Tgit_signature; 
           message_encoding:pcchar; message:pcchar; var tree:Tgit_tree; parent_count:Tsize_t; args:array of const):Tcint;cdecl;external External_library name 'git_commit_create_v';
function git_commit_create_v(var id:Tgit_oid; var repo:Tgit_repository; update_ref:pcchar; var author:Tgit_signature; var committer:Tgit_signature; 
           message_encoding:pcchar; message:pcchar; var tree:Tgit_tree; parent_count:Tsize_t):Tcint;cdecl;external External_library name 'git_commit_create_v';
function git_commit_amend(var id:Tgit_oid; var commit_to_amend:Tgit_commit; update_ref:pcchar; var author:Tgit_signature; var committer:Tgit_signature; 
           message_encoding:pcchar; message:pcchar; var tree:Tgit_tree):Tcint;cdecl;external External_library name 'git_commit_amend';
function git_commit_create_buffer(var out:Tgit_buf; var repo:Tgit_repository; var author:Tgit_signature; var committer:Tgit_signature; message_encoding:pcchar; 
           message:pcchar; var tree:Tgit_tree; parent_count:Tsize_t; var parents:Pgit_commit):Tcint;cdecl;external External_library name 'git_commit_create_buffer';
function git_commit_create_with_signature(var out:Tgit_oid; var repo:Tgit_repository; commit_content:pcchar; signature:pcchar; signature_field:pcchar):Tcint;cdecl;external External_library name 'git_commit_create_with_signature';
function git_commit_dup(var out:Pgit_commit; var source:Tgit_commit):Tcint;cdecl;external External_library name 'git_commit_dup';
type

  Tgit_commit_signing_cb = function (var signature:Tgit_buf; var signature_field:Tgit_buf; commit_content:pcchar; payload:pointer):Tcint;cdecl;

  Tgit_config_level_t =  Longint;
  Const
    GIT_CONFIG_LEVEL_PROGRAMDATA = 1;
    GIT_CONFIG_LEVEL_SYSTEM = 2;
    GIT_CONFIG_LEVEL_XDG = 3;
    GIT_CONFIG_LEVEL_GLOBAL = 4;
    GIT_CONFIG_LEVEL_LOCAL = 5;
    GIT_CONFIG_LEVEL_APP = 6;
    GIT_CONFIG_HIGHEST_LEVEL = -(1);

type
  Tgit_config_entry = record
      name : pcchar;
      value : pcchar;
      include_depth : Tcuint;
      level : Tgit_config_level_t;
      free : TProcedureVarEntryTgit_config_entry;cdecl;
      payload : pointer;
    end;

procedure git_config_entry_free(para1:Pgit_config_entry);cdecl;external External_library name 'git_config_entry_free';
type

  Tgit_config_foreach_cb = function (var entry:Tgit_config_entry; payload:pointer):Tcint;cdecl;

  Tgit_configmap_t =  Longint;
  Const
    GIT_CONFIGMAP_FALSE = 0;
    GIT_CONFIGMAP_TRUE = 1;
    GIT_CONFIGMAP_INT32 = 2;
    GIT_CONFIGMAP_STRING = 3;

type
  Tgit_configmap = record
      _type : Tgit_configmap_t;
      str_match : pcchar;
      map_value : Tcint;
    end;

function git_config_find_global(var out:Tgit_buf):Tcint;cdecl;external External_library name 'git_config_find_global';
function git_config_find_xdg(var out:Tgit_buf):Tcint;cdecl;external External_library name 'git_config_find_xdg';
function git_config_find_system(var out:Tgit_buf):Tcint;cdecl;external External_library name 'git_config_find_system';
function git_config_find_programdata(var out:Tgit_buf):Tcint;cdecl;external External_library name 'git_config_find_programdata';
function git_config_open_default(var out:Pgit_config):Tcint;cdecl;external External_library name 'git_config_open_default';
function git_config_new(var out:Pgit_config):Tcint;cdecl;external External_library name 'git_config_new';
function git_config_add_file_ondisk(var cfg:Tgit_config; path:pcchar; level:Tgit_config_level_t; var repo:Tgit_repository; force:Tcint):Tcint;cdecl;external External_library name 'git_config_add_file_ondisk';
function git_config_open_ondisk(var out:Pgit_config; path:pcchar):Tcint;cdecl;external External_library name 'git_config_open_ondisk';
function git_config_open_level(var out:Pgit_config; var parent:Tgit_config; level:Tgit_config_level_t):Tcint;cdecl;external External_library name 'git_config_open_level';
function git_config_open_global(var out:Pgit_config; var config:Tgit_config):Tcint;cdecl;external External_library name 'git_config_open_global';
function git_config_snapshot(var out:Pgit_config; var config:Tgit_config):Tcint;cdecl;external External_library name 'git_config_snapshot';
procedure git_config_free(var cfg:Tgit_config);cdecl;external External_library name 'git_config_free';
function git_config_get_entry(var out:Pgit_config_entry; var cfg:Tgit_config; name:pcchar):Tcint;cdecl;external External_library name 'git_config_get_entry';
function git_config_get_int32(var out:Tint32_t; var cfg:Tgit_config; name:pcchar):Tcint;cdecl;external External_library name 'git_config_get_int32';
function git_config_get_int64(var out:Tint64_t; var cfg:Tgit_config; name:pcchar):Tcint;cdecl;external External_library name 'git_config_get_int64';
function git_config_get_bool(var out:Tcint; var cfg:Tgit_config; name:pcchar):Tcint;cdecl;external External_library name 'git_config_get_bool';
function git_config_get_path(var out:Tgit_buf; var cfg:Tgit_config; name:pcchar):Tcint;cdecl;external External_library name 'git_config_get_path';
function git_config_get_string(out:Ppcchar; var cfg:Tgit_config; name:pcchar):Tcint;cdecl;external External_library name 'git_config_get_string';
function git_config_get_string_buf(var out:Tgit_buf; var cfg:Tgit_config; name:pcchar):Tcint;cdecl;external External_library name 'git_config_get_string_buf';
function git_config_get_multivar_foreach(var cfg:Tgit_config; name:pcchar; regexp:pcchar; callback:Tgit_config_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_config_get_multivar_foreach';
function git_config_multivar_iterator_new(var out:Pgit_config_iterator; var cfg:Tgit_config; name:pcchar; regexp:pcchar):Tcint;cdecl;external External_library name 'git_config_multivar_iterator_new';
function git_config_next(var entry:Pgit_config_entry; var iter:Tgit_config_iterator):Tcint;cdecl;external External_library name 'git_config_next';
procedure git_config_iterator_free(var iter:Tgit_config_iterator);cdecl;external External_library name 'git_config_iterator_free';
function git_config_set_int32(var cfg:Tgit_config; name:pcchar; value:Tint32_t):Tcint;cdecl;external External_library name 'git_config_set_int32';
function git_config_set_int64(var cfg:Tgit_config; name:pcchar; value:Tint64_t):Tcint;cdecl;external External_library name 'git_config_set_int64';
function git_config_set_bool(var cfg:Tgit_config; name:pcchar; value:Tcint):Tcint;cdecl;external External_library name 'git_config_set_bool';
function git_config_set_string(var cfg:Tgit_config; name:pcchar; value:pcchar):Tcint;cdecl;external External_library name 'git_config_set_string';
function git_config_set_multivar(var cfg:Tgit_config; name:pcchar; regexp:pcchar; value:pcchar):Tcint;cdecl;external External_library name 'git_config_set_multivar';
function git_config_delete_entry(var cfg:Tgit_config; name:pcchar):Tcint;cdecl;external External_library name 'git_config_delete_entry';
function git_config_delete_multivar(var cfg:Tgit_config; name:pcchar; regexp:pcchar):Tcint;cdecl;external External_library name 'git_config_delete_multivar';
function git_config_foreach(var cfg:Tgit_config; callback:Tgit_config_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_config_foreach';
function git_config_iterator_new(var out:Pgit_config_iterator; var cfg:Tgit_config):Tcint;cdecl;external External_library name 'git_config_iterator_new';
function git_config_iterator_glob_new(var out:Pgit_config_iterator; var cfg:Tgit_config; regexp:pcchar):Tcint;cdecl;external External_library name 'git_config_iterator_glob_new';
function git_config_foreach_match(var cfg:Tgit_config; regexp:pcchar; callback:Tgit_config_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_config_foreach_match';
function git_config_get_mapped(var out:Tcint; var cfg:Tgit_config; name:pcchar; var maps:Tgit_configmap; map_n:Tsize_t):Tcint;cdecl;external External_library name 'git_config_get_mapped';
function git_config_lookup_map_value(var out:Tcint; var maps:Tgit_configmap; map_n:Tsize_t; value:pcchar):Tcint;cdecl;external External_library name 'git_config_lookup_map_value';
function git_config_parse_bool(var out:Tcint; value:pcchar):Tcint;cdecl;external External_library name 'git_config_parse_bool';
function git_config_parse_int32(var out:Tint32_t; value:pcchar):Tcint;cdecl;external External_library name 'git_config_parse_int32';
function git_config_parse_int64(var out:Tint64_t; value:pcchar):Tcint;cdecl;external External_library name 'git_config_parse_int64';
function git_config_parse_path(var out:Tgit_buf; value:pcchar):Tcint;cdecl;external External_library name 'git_config_parse_path';
function git_config_backend_foreach_match(var backend:Tgit_config_backend; regexp:pcchar; callback:Tgit_config_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_config_backend_foreach_match';
function git_config_lock(var tx:Pgit_transaction; var cfg:Tgit_config):Tcint;cdecl;external External_library name 'git_config_lock';
type
  Tgit_describe_strategy_t =  Longint;
  Const
    GIT_DESCRIBE_DEFAULT = 0;
    GIT_DESCRIBE_TAGS = 1;
    GIT_DESCRIBE_ALL = 2;

type
  Tgit_describe_options = record
      version : Tcuint;
      max_candidates_tags : Tcuint;
      describe_strategy : Tcuint;
      pattern : pcchar;
      only_follow_first_parent : Tcint;
      show_commit_oid_as_fallback : Tcint;
    end;

function git_describe_options_init(var opts:Tgit_describe_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_describe_options_init';
type
  Tgit_describe_format_options = record
      version : Tcuint;
      abbreviated_size : Tcuint;
      always_use_long_format : Tcint;
      dirty_suffix : pcchar;
    end;

function git_describe_format_options_init(var opts:Tgit_describe_format_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_describe_format_options_init';


function git_describe_commit(var result:Pgit_describe_result; var committish:Tgit_object; var opts:Tgit_describe_options):Tcint;cdecl;external External_library name 'git_describe_commit';
function git_describe_workdir(var out:Pgit_describe_result; var repo:Tgit_repository; var opts:Tgit_describe_options):Tcint;cdecl;external External_library name 'git_describe_workdir';
function git_describe_format(var out:Tgit_buf; var result:Tgit_describe_result; var opts:Tgit_describe_format_options):Tcint;cdecl;external External_library name 'git_describe_format';
procedure git_describe_result_free(var result:Tgit_describe_result);cdecl;external External_library name 'git_describe_result_free';
type
  Tgit_error_code =  Longint;
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
  Tgit_error = record
      message : pcchar;
      klass : Tcint;
    end;

  Tgit_error_t =  Longint;
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
function git_error_set_str(error_class:Tcint; _string:pcchar):Tcint;cdecl;external External_library name 'git_error_set_str';
procedure git_error_set_oom;cdecl;external External_library name 'git_error_set_oom';
type
  Tgit_filter_mode_t =  Longint;
  Const
    GIT_FILTER_TO_WORKTREE = 0;
    GIT_FILTER_SMUDGE = GIT_FILTER_TO_WORKTREE;
    GIT_FILTER_TO_ODB = 1;
    GIT_FILTER_CLEAN = GIT_FILTER_TO_ODB;

type
  Tgit_filter_flag_t =  Longint;
  Const
    GIT_FILTER_DEFAULT = 0;
    GIT_FILTER_ALLOW_UNSAFE = 1 shl 0;
    GIT_FILTER_NO_SYSTEM_ATTRIBUTES = 1 shl 1;
    GIT_FILTER_ATTRIBUTES_FROM_HEAD = 1 shl 2;



function git_filter_list_load(var filters:Pgit_filter_list; var repo:Tgit_repository; var blob:Tgit_blob; path:pcchar; mode:Tgit_filter_mode_t; 
           flags:Tuint32_t):Tcint;cdecl;external External_library name 'git_filter_list_load';
function git_filter_list_contains(var filters:Tgit_filter_list; name:pcchar):Tcint;cdecl;external External_library name 'git_filter_list_contains';
function git_filter_list_apply_to_data(var out:Tgit_buf; var filters:Tgit_filter_list; var in:Tgit_buf):Tcint;cdecl;external External_library name 'git_filter_list_apply_to_data';
function git_filter_list_apply_to_file(var out:Tgit_buf; var filters:Tgit_filter_list; var repo:Tgit_repository; path:pcchar):Tcint;cdecl;external External_library name 'git_filter_list_apply_to_file';
function git_filter_list_apply_to_blob(var out:Tgit_buf; var filters:Tgit_filter_list; var blob:Tgit_blob):Tcint;cdecl;external External_library name 'git_filter_list_apply_to_blob';
function git_filter_list_stream_data(var filters:Tgit_filter_list; var data:Tgit_buf; var target:Tgit_writestream):Tcint;cdecl;external External_library name 'git_filter_list_stream_data';
function git_filter_list_stream_file(var filters:Tgit_filter_list; var repo:Tgit_repository; path:pcchar; var target:Tgit_writestream):Tcint;cdecl;external External_library name 'git_filter_list_stream_file';
function git_filter_list_stream_blob(var filters:Tgit_filter_list; var blob:Tgit_blob; var target:Tgit_writestream):Tcint;cdecl;external External_library name 'git_filter_list_stream_blob';
procedure git_filter_list_free(var filters:Tgit_filter_list);cdecl;external External_library name 'git_filter_list_free';
function git_libgit2_init:Tcint;cdecl;external External_library name 'git_libgit2_init';
function git_libgit2_shutdown:Tcint;cdecl;external External_library name 'git_libgit2_shutdown';
function git_graph_ahead_behind(var ahead:Tsize_t; var behind:Tsize_t; var repo:Tgit_repository; var local:Tgit_oid; var upstream:Tgit_oid):Tcint;cdecl;external External_library name 'git_graph_ahead_behind';
function git_graph_descendant_of(var repo:Tgit_repository; var commit:Tgit_oid; var ancestor:Tgit_oid):Tcint;cdecl;external External_library name 'git_graph_descendant_of';
function git_ignore_add_rule(var repo:Tgit_repository; rules:pcchar):Tcint;cdecl;external External_library name 'git_ignore_add_rule';
function git_ignore_clear_internal_rules(var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_ignore_clear_internal_rules';
function git_ignore_path_is_ignored(var ignored:Tcint; var repo:Tgit_repository; path:pcchar):Tcint;cdecl;external External_library name 'git_ignore_path_is_ignored';
function git_mailmap_new(var out:Pgit_mailmap):Tcint;cdecl;external External_library name 'git_mailmap_new';
procedure git_mailmap_free(var mm:Tgit_mailmap);cdecl;external External_library name 'git_mailmap_free';
function git_mailmap_add_entry(var mm:Tgit_mailmap; real_name:pcchar; real_email:pcchar; replace_name:pcchar; replace_email:pcchar):Tcint;cdecl;external External_library name 'git_mailmap_add_entry';
function git_mailmap_from_buffer(var out:Pgit_mailmap; buf:pcchar; len:Tsize_t):Tcint;cdecl;external External_library name 'git_mailmap_from_buffer';
function git_mailmap_from_repository(var out:Pgit_mailmap; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_mailmap_from_repository';
function git_mailmap_resolve(real_name:Ppcchar; real_email:Ppcchar; var mm:Tgit_mailmap; name:pcchar; email:pcchar):Tcint;cdecl;external External_library name 'git_mailmap_resolve';
function git_mailmap_resolve_signature(var out:Pgit_signature; var mm:Tgit_mailmap; var sig:Tgit_signature):Tcint;cdecl;external External_library name 'git_mailmap_resolve_signature';
function git_message_prettify(var out:Tgit_buf; message:pcchar; strip_comments:Tcint; comment_char:Tcchar):Tcint;cdecl;external External_library name 'git_message_prettify';
type
  Tgit_message_trailer = record
      key : pcchar;
      value : pcchar;
    end;

  Tgit_message_trailer_array = record
      trailers : Pgit_message_trailer;
      count : Tsize_t;
      _trailer_block : pcchar;
    end;

function git_message_trailers(var arr:Tgit_message_trailer_array; message:pcchar):Tcint;cdecl;external External_library name 'git_message_trailers';
procedure git_message_trailer_array_free(var arr:Tgit_message_trailer_array);cdecl;external External_library name 'git_message_trailer_array_free';
type

  Tgit_note_foreach_cb = function (var blob_id:Tgit_oid; var annotated_object_id:Tgit_oid; payload:pointer):Tcint;cdecl;
  Tgit_iterator = Tgit_note_iterator;

function git_note_iterator_new(var out:Pgit_note_iterator; var repo:Tgit_repository; notes_ref:pcchar):Tcint;cdecl;external External_library name 'git_note_iterator_new';
function git_note_commit_iterator_new(var out:Pgit_note_iterator; var notes_commit:Tgit_commit):Tcint;cdecl;external External_library name 'git_note_commit_iterator_new';
procedure git_note_iterator_free(var it:Tgit_note_iterator);cdecl;external External_library name 'git_note_iterator_free';
function git_note_next(var note_id:Tgit_oid; var annotated_id:Tgit_oid; var it:Tgit_note_iterator):Tcint;cdecl;external External_library name 'git_note_next';
function git_note_read(var out:Pgit_note; var repo:Tgit_repository; notes_ref:pcchar; var oid:Tgit_oid):Tcint;cdecl;external External_library name 'git_note_read';
function git_note_commit_read(var out:Pgit_note; var repo:Tgit_repository; var notes_commit:Tgit_commit; var oid:Tgit_oid):Tcint;cdecl;external External_library name 'git_note_commit_read';
function git_note_author(var note:Tgit_note):Pgit_signature;cdecl;external External_library name 'git_note_author';
function git_note_committer(var note:Tgit_note):Pgit_signature;cdecl;external External_library name 'git_note_committer';
function git_note_message(var note:Tgit_note):pcchar;cdecl;external External_library name 'git_note_message';
function git_note_id(var note:Tgit_note):Pgit_oid;cdecl;external External_library name 'git_note_id';
function git_note_create(var out:Tgit_oid; var repo:Tgit_repository; notes_ref:pcchar; var author:Tgit_signature; var committer:Tgit_signature; 
           var oid:Tgit_oid; note:pcchar; force:Tcint):Tcint;cdecl;external External_library name 'git_note_create';
function git_note_commit_create(var notes_commit_out:Tgit_oid; var notes_blob_out:Tgit_oid; var repo:Tgit_repository; var parent:Tgit_commit; var author:Tgit_signature; 
           var committer:Tgit_signature; var oid:Tgit_oid; note:pcchar; allow_note_overwrite:Tcint):Tcint;cdecl;external External_library name 'git_note_commit_create';
function git_note_remove(var repo:Tgit_repository; notes_ref:pcchar; var author:Tgit_signature; var committer:Tgit_signature; var oid:Tgit_oid):Tcint;cdecl;external External_library name 'git_note_remove';
function git_note_commit_remove(var notes_commit_out:Tgit_oid; var repo:Tgit_repository; var notes_commit:Tgit_commit; var author:Tgit_signature; var committer:Tgit_signature; 
           var oid:Tgit_oid):Tcint;cdecl;external External_library name 'git_note_commit_remove';
procedure git_note_free(var note:Tgit_note);cdecl;external External_library name 'git_note_free';
function git_note_default_ref(var out:Tgit_buf; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_note_default_ref';
function git_note_foreach(var repo:Tgit_repository; notes_ref:pcchar; note_cb:Tgit_note_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_note_foreach';
type

  Tgit_odb_foreach_cb = function (var id:Tgit_oid; payload:pointer):Tcint;cdecl;

function git_odb_new(var out:Pgit_odb):Tcint;cdecl;external External_library name 'git_odb_new';
function git_odb_open(var out:Pgit_odb; objects_dir:pcchar):Tcint;cdecl;external External_library name 'git_odb_open';
function git_odb_add_disk_alternate(var odb:Tgit_odb; path:pcchar):Tcint;cdecl;external External_library name 'git_odb_add_disk_alternate';
procedure git_odb_free(var db:Tgit_odb);cdecl;external External_library name 'git_odb_free';
function git_odb_read(var out:Pgit_odb_object; var db:Tgit_odb; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_odb_read';
function git_odb_read_prefix(var out:Pgit_odb_object; var db:Tgit_odb; var short_id:Tgit_oid; len:Tsize_t):Tcint;cdecl;external External_library name 'git_odb_read_prefix';
function git_odb_read_header(var len_out:Tsize_t; var type_out:Tgit_object_t; var db:Tgit_odb; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_odb_read_header';
function git_odb_exists(var db:Tgit_odb; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_odb_exists';
function git_odb_exists_prefix(var out:Tgit_oid; var db:Tgit_odb; var short_id:Tgit_oid; len:Tsize_t):Tcint;cdecl;external External_library name 'git_odb_exists_prefix';
type
  Tgit_odb_expand_id = record
      id : Tgit_oid;
      length : Tcushort;
      _type : Tgit_object_t;
    end;

function git_odb_expand_ids(var db:Tgit_odb; var ids:Tgit_odb_expand_id; count:Tsize_t):Tcint;cdecl;external External_library name 'git_odb_expand_ids';
function git_odb_refresh(var db:Tgit_odb):Tcint;cdecl;external External_library name 'git_odb_refresh';
function git_odb_foreach(var db:Tgit_odb; cb:Tgit_odb_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_odb_foreach';
function git_odb_write(var out:Tgit_oid; var odb:Tgit_odb; data:pointer; len:Tsize_t; _type:Tgit_object_t):Tcint;cdecl;external External_library name 'git_odb_write';
function git_odb_open_wstream(var out:Pgit_odb_stream; var db:Tgit_odb; size:Tgit_object_size_t; _type:Tgit_object_t):Tcint;cdecl;external External_library name 'git_odb_open_wstream';
function git_odb_stream_write(var stream:Tgit_odb_stream; buffer:pcchar; len:Tsize_t):Tcint;cdecl;external External_library name 'git_odb_stream_write';
function git_odb_stream_finalize_write(var out:Tgit_oid; var stream:Tgit_odb_stream):Tcint;cdecl;external External_library name 'git_odb_stream_finalize_write';
function git_odb_stream_read(var stream:Tgit_odb_stream; buffer:pcchar; len:Tsize_t):Tcint;cdecl;external External_library name 'git_odb_stream_read';
procedure git_odb_stream_free(var stream:Tgit_odb_stream);cdecl;external External_library name 'git_odb_stream_free';
function git_odb_open_rstream(var out:Pgit_odb_stream; var len:Tsize_t; var _type:Tgit_object_t; var db:Tgit_odb; var oid:Tgit_oid):Tcint;cdecl;external External_library name 'git_odb_open_rstream';
function git_odb_write_pack(var out:Pgit_odb_writepack; var db:Tgit_odb; progress_cb:Tgit_indexer_progress_cb; progress_payload:pointer):Tcint;cdecl;external External_library name 'git_odb_write_pack';
function git_odb_hash(var out:Tgit_oid; data:pointer; len:Tsize_t; _type:Tgit_object_t):Tcint;cdecl;external External_library name 'git_odb_hash';
function git_odb_hashfile(var out:Tgit_oid; path:pcchar; _type:Tgit_object_t):Tcint;cdecl;external External_library name 'git_odb_hashfile';
function git_odb_object_dup(var dest:Pgit_odb_object; var source:Tgit_odb_object):Tcint;cdecl;external External_library name 'git_odb_object_dup';
procedure git_odb_object_free(var object:Tgit_odb_object);cdecl;external External_library name 'git_odb_object_free';
function git_odb_object_id(var object:Tgit_odb_object):Pgit_oid;cdecl;external External_library name 'git_odb_object_id';
function git_odb_object_data(var object:Tgit_odb_object):pointer;cdecl;external External_library name 'git_odb_object_data';
function git_odb_object_size(var object:Tgit_odb_object):Tsize_t;cdecl;external External_library name 'git_odb_object_size';
function git_odb_object_type(var object:Tgit_odb_object):Tgit_object_t;cdecl;external External_library name 'git_odb_object_type';
function git_odb_add_backend(var odb:Tgit_odb; var backend:Tgit_odb_backend; priority:Tcint):Tcint;cdecl;external External_library name 'git_odb_add_backend';
function git_odb_add_alternate(var odb:Tgit_odb; var backend:Tgit_odb_backend; priority:Tcint):Tcint;cdecl;external External_library name 'git_odb_add_alternate';
function git_odb_num_backends(var odb:Tgit_odb):Tsize_t;cdecl;external External_library name 'git_odb_num_backends';
function git_odb_get_backend(var out:Pgit_odb_backend; var odb:Tgit_odb; pos:Tsize_t):Tcint;cdecl;external External_library name 'git_odb_get_backend';
function git_odb_backend_pack(var out:Pgit_odb_backend; objects_dir:pcchar):Tcint;cdecl;external External_library name 'git_odb_backend_pack';
function git_odb_backend_loose(var out:Pgit_odb_backend; objects_dir:pcchar; compression_level:Tcint; do_fsync:Tcint; dir_mode:Tcuint; 
           file_mode:Tcuint):Tcint;cdecl;external External_library name 'git_odb_backend_loose';
function git_odb_backend_one_pack(var out:Pgit_odb_backend; index_file:pcchar):Tcint;cdecl;external External_library name 'git_odb_backend_one_pack';
type
  Tgit_odb_stream_t =  Longint;
  Const
    GIT_STREAM_RDONLY = 1 shl 1;
    GIT_STREAM_WRONLY = 1 shl 2;
    GIT_STREAM_RW = GIT_STREAM_RDONLY or GIT_STREAM_WRONLY;

type
  Tgit_odb_stream = record
      backend : Pgit_odb_backend;
      mode : Tcuint;
      hash_ctx : pointer;
      declared_size : Tgit_object_size_t;
      received_bytes : Tgit_object_size_t;
      read : TFunctionVarStreamTgit_odb_streamBufferPccharLenTsize_tTcint;cdecl;
      write : TFunctionVarStreamTgit_odb_streamBufferPccharLenTsize_tTcint;cdecl;
      finalize_write : TFunctionVarStreamTgit_odb_streamVarOidTgit_oidTcint;cdecl;
      free : TProcedureVarStreamTgit_odb_stream;cdecl;
    end;

  Tgit_odb_writepack = record
      backend : Pgit_odb_backend;
      append : TFunctionVarWritepackTgit_odb_writepackDataPointerSizeTsize_tVarStatsTgit_indexer_progressTcint;cdecl;
      commit : TFunctionVarWritepackTgit_odb_writepackVarStatsTgit_indexer_progressTcint;cdecl;
      free : TProcedureVarWritepackTgit_odb_writepack;cdecl;
    end;


function git_patch_from_diff(var out:Pgit_patch; var diff:Tgit_diff; idx:Tsize_t):Tcint;cdecl;external External_library name 'git_patch_from_diff';
function git_patch_from_blobs(var out:Pgit_patch; var old_blob:Tgit_blob; old_as_path:pcchar; var new_blob:Tgit_blob; new_as_path:pcchar; 
           var opts:Tgit_diff_options):Tcint;cdecl;external External_library name 'git_patch_from_blobs';
function git_patch_from_blob_and_buffer(var out:Pgit_patch; var old_blob:Tgit_blob; old_as_path:pcchar; buffer:pointer; buffer_len:Tsize_t; 
           buffer_as_path:pcchar; var opts:Tgit_diff_options):Tcint;cdecl;external External_library name 'git_patch_from_blob_and_buffer';
function git_patch_from_buffers(var out:Pgit_patch; old_buffer:pointer; old_len:Tsize_t; old_as_path:pcchar; new_buffer:pointer; 
           new_len:Tsize_t; new_as_path:pcchar; var opts:Tgit_diff_options):Tcint;cdecl;external External_library name 'git_patch_from_buffers';
procedure git_patch_free(var patch:Tgit_patch);cdecl;external External_library name 'git_patch_free';
function git_patch_get_delta(var patch:Tgit_patch):Pgit_diff_delta;cdecl;external External_library name 'git_patch_get_delta';
function git_patch_num_hunks(var patch:Tgit_patch):Tsize_t;cdecl;external External_library name 'git_patch_num_hunks';
function git_patch_line_stats(var total_context:Tsize_t; var total_additions:Tsize_t; var total_deletions:Tsize_t; var patch:Tgit_patch):Tcint;cdecl;external External_library name 'git_patch_line_stats';
function git_patch_get_hunk(var out:Pgit_diff_hunk; var lines_in_hunk:Tsize_t; var patch:Tgit_patch; hunk_idx:Tsize_t):Tcint;cdecl;external External_library name 'git_patch_get_hunk';
function git_patch_num_lines_in_hunk(var patch:Tgit_patch; hunk_idx:Tsize_t):Tcint;cdecl;external External_library name 'git_patch_num_lines_in_hunk';
function git_patch_get_line_in_hunk(var out:Pgit_diff_line; var patch:Tgit_patch; hunk_idx:Tsize_t; line_of_hunk:Tsize_t):Tcint;cdecl;external External_library name 'git_patch_get_line_in_hunk';
function git_patch_size(var patch:Tgit_patch; include_context:Tcint; include_hunk_headers:Tcint; include_file_headers:Tcint):Tsize_t;cdecl;external External_library name 'git_patch_size';
function git_patch_print(var patch:Tgit_patch; print_cb:Tgit_diff_line_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_patch_print';
function git_patch_to_buf(var out:Tgit_buf; var patch:Tgit_patch):Tcint;cdecl;external External_library name 'git_patch_to_buf';
type

  Tgit_pathspec_flag_t =  Longint;
  Const
    GIT_PATHSPEC_DEFAULT = 0;
    GIT_PATHSPEC_IGNORE_CASE = 1 shl 0;
    GIT_PATHSPEC_USE_CASE = 1 shl 1;
    GIT_PATHSPEC_NO_GLOB = 1 shl 2;
    GIT_PATHSPEC_NO_MATCH_ERROR = 1 shl 3;
    GIT_PATHSPEC_FIND_FAILURES = 1 shl 4;
    GIT_PATHSPEC_FAILURES_ONLY = 1 shl 5;


function git_pathspec_new(var out:Pgit_pathspec; var pathspec:Tgit_strarray):Tcint;cdecl;external External_library name 'git_pathspec_new';
procedure git_pathspec_free(var ps:Tgit_pathspec);cdecl;external External_library name 'git_pathspec_free';
function git_pathspec_matches_path(var ps:Tgit_pathspec; flags:Tuint32_t; path:pcchar):Tcint;cdecl;external External_library name 'git_pathspec_matches_path';
function git_pathspec_match_workdir(var out:Pgit_pathspec_match_list; var repo:Tgit_repository; flags:Tuint32_t; var ps:Tgit_pathspec):Tcint;cdecl;external External_library name 'git_pathspec_match_workdir';
function git_pathspec_match_index(var out:Pgit_pathspec_match_list; var index:Tgit_index; flags:Tuint32_t; var ps:Tgit_pathspec):Tcint;cdecl;external External_library name 'git_pathspec_match_index';
function git_pathspec_match_tree(var out:Pgit_pathspec_match_list; var tree:Tgit_tree; flags:Tuint32_t; var ps:Tgit_pathspec):Tcint;cdecl;external External_library name 'git_pathspec_match_tree';
function git_pathspec_match_diff(var out:Pgit_pathspec_match_list; var diff:Tgit_diff; flags:Tuint32_t; var ps:Tgit_pathspec):Tcint;cdecl;external External_library name 'git_pathspec_match_diff';
procedure git_pathspec_match_list_free(var m:Tgit_pathspec_match_list);cdecl;external External_library name 'git_pathspec_match_list_free';
function git_pathspec_match_list_entrycount(var m:Tgit_pathspec_match_list):Tsize_t;cdecl;external External_library name 'git_pathspec_match_list_entrycount';
function git_pathspec_match_list_entry(var m:Tgit_pathspec_match_list; pos:Tsize_t):pcchar;cdecl;external External_library name 'git_pathspec_match_list_entry';
function git_pathspec_match_list_diff_entry(var m:Tgit_pathspec_match_list; pos:Tsize_t):Pgit_diff_delta;cdecl;external External_library name 'git_pathspec_match_list_diff_entry';
function git_pathspec_match_list_failed_entrycount(var m:Tgit_pathspec_match_list):Tsize_t;cdecl;external External_library name 'git_pathspec_match_list_failed_entrycount';
function git_pathspec_match_list_failed_entry(var m:Tgit_pathspec_match_list; pos:Tsize_t):pcchar;cdecl;external External_library name 'git_pathspec_match_list_failed_entry';
type
  Tgit_rebase_options = record
      version : Tcuint;
      quiet : Tcint;
      inmemory : Tcint;
      rewrite_notes_ref : pcchar;
      merge_options : Tgit_merge_options;
      checkout_options : Tgit_checkout_options;
      signing_cb : Tgit_commit_signing_cb;
      payload : pointer;
    end;

  Tgit_rebase_operation_t =  Longint;
  Const
    GIT_REBASE_OPERATION_PICK = 0;
    GIT_REBASE_OPERATION_REWORD = 1;
    GIT_REBASE_OPERATION_EDIT = 2;
    GIT_REBASE_OPERATION_SQUASH = 3;
    GIT_REBASE_OPERATION_FIXUP = 4;
    GIT_REBASE_OPERATION_EXEC = 5;

type
  Tgit_rebase_operation = record
      _type : Tgit_rebase_operation_t;
      id : Tgit_oid;
      exec : pcchar;
    end;

function git_rebase_options_init(var opts:Tgit_rebase_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_rebase_options_init';
function git_rebase_init(var out:Pgit_rebase; var repo:Tgit_repository; var branch:Tgit_annotated_commit; var upstream:Tgit_annotated_commit; var onto:Tgit_annotated_commit; 
           var opts:Tgit_rebase_options):Tcint;cdecl;external External_library name 'git_rebase_init';
function git_rebase_open(var out:Pgit_rebase; var repo:Tgit_repository; var opts:Tgit_rebase_options):Tcint;cdecl;external External_library name 'git_rebase_open';
function git_rebase_orig_head_name(var rebase:Tgit_rebase):pcchar;cdecl;external External_library name 'git_rebase_orig_head_name';
function git_rebase_orig_head_id(var rebase:Tgit_rebase):Pgit_oid;cdecl;external External_library name 'git_rebase_orig_head_id';
function git_rebase_onto_name(var rebase:Tgit_rebase):pcchar;cdecl;external External_library name 'git_rebase_onto_name';
function git_rebase_onto_id(var rebase:Tgit_rebase):Pgit_oid;cdecl;external External_library name 'git_rebase_onto_id';
function git_rebase_operation_entrycount(var rebase:Tgit_rebase):Tsize_t;cdecl;external External_library name 'git_rebase_operation_entrycount';
function git_rebase_operation_current(var rebase:Tgit_rebase):Tsize_t;cdecl;external External_library name 'git_rebase_operation_current';
function git_rebase_operation_byindex(var rebase:Tgit_rebase; idx:Tsize_t):Pgit_rebase_operation;cdecl;external External_library name 'git_rebase_operation_byindex';
function git_rebase_next(var operation:Pgit_rebase_operation; var rebase:Tgit_rebase):Tcint;cdecl;external External_library name 'git_rebase_next';
function git_rebase_inmemory_index(var index:Pgit_index; var rebase:Tgit_rebase):Tcint;cdecl;external External_library name 'git_rebase_inmemory_index';
function git_rebase_commit(var id:Tgit_oid; var rebase:Tgit_rebase; var author:Tgit_signature; var committer:Tgit_signature; message_encoding:pcchar; 
           message:pcchar):Tcint;cdecl;external External_library name 'git_rebase_commit';
function git_rebase_abort(var rebase:Tgit_rebase):Tcint;cdecl;external External_library name 'git_rebase_abort';
function git_rebase_finish(var rebase:Tgit_rebase; var signature:Tgit_signature):Tcint;cdecl;external External_library name 'git_rebase_finish';
procedure git_rebase_free(var rebase:Tgit_rebase);cdecl;external External_library name 'git_rebase_free';
function git_refdb_new(var out:Pgit_refdb; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_refdb_new';
function git_refdb_open(var out:Pgit_refdb; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_refdb_open';
function git_refdb_compress(var refdb:Tgit_refdb):Tcint;cdecl;external External_library name 'git_refdb_compress';
procedure git_refdb_free(var refdb:Tgit_refdb);cdecl;external External_library name 'git_refdb_free';
function git_reflog_read(var out:Pgit_reflog; var repo:Tgit_repository; name:pcchar):Tcint;cdecl;external External_library name 'git_reflog_read';
function git_reflog_write(var reflog:Tgit_reflog):Tcint;cdecl;external External_library name 'git_reflog_write';
function git_reflog_append(var reflog:Tgit_reflog; var id:Tgit_oid; var committer:Tgit_signature; msg:pcchar):Tcint;cdecl;external External_library name 'git_reflog_append';
function git_reflog_rename(var repo:Tgit_repository; old_name:pcchar; name:pcchar):Tcint;cdecl;external External_library name 'git_reflog_rename';
function git_reflog_delete(var repo:Tgit_repository; name:pcchar):Tcint;cdecl;external External_library name 'git_reflog_delete';
function git_reflog_entrycount(var reflog:Tgit_reflog):Tsize_t;cdecl;external External_library name 'git_reflog_entrycount';
function git_reflog_entry_byindex(var reflog:Tgit_reflog; idx:Tsize_t):Pgit_reflog_entry;cdecl;external External_library name 'git_reflog_entry_byindex';
function git_reflog_drop(var reflog:Tgit_reflog; idx:Tsize_t; rewrite_previous_entry:Tcint):Tcint;cdecl;external External_library name 'git_reflog_drop';
function git_reflog_entry_id_old(var entry:Tgit_reflog_entry):Pgit_oid;cdecl;external External_library name 'git_reflog_entry_id_old';
function git_reflog_entry_id_new(var entry:Tgit_reflog_entry):Pgit_oid;cdecl;external External_library name 'git_reflog_entry_id_new';
function git_reflog_entry_committer(var entry:Tgit_reflog_entry):Pgit_signature;cdecl;external External_library name 'git_reflog_entry_committer';
function git_reflog_entry_message(var entry:Tgit_reflog_entry):pcchar;cdecl;external External_library name 'git_reflog_entry_message';
procedure git_reflog_free(var reflog:Tgit_reflog);cdecl;external External_library name 'git_reflog_free';
type
  Tgit_reset_t =  Longint;
  Const
    GIT_RESET_SOFT = 1;
    GIT_RESET_MIXED = 2;
    GIT_RESET_HARD = 3;


function git_reset(var repo:Tgit_repository; var target:Tgit_object; reset_type:Tgit_reset_t; var checkout_opts:Tgit_checkout_options):Tcint;cdecl;external External_library name 'git_reset';
function git_reset_from_annotated(var repo:Tgit_repository; var commit:Tgit_annotated_commit; reset_type:Tgit_reset_t; var checkout_opts:Tgit_checkout_options):Tcint;cdecl;external External_library name 'git_reset_from_annotated';
function git_reset_default(var repo:Tgit_repository; var target:Tgit_object; var pathspecs:Tgit_strarray):Tcint;cdecl;external External_library name 'git_reset_default';
type
  Tgit_revert_options = record
      version : Tcuint;
      mainline : Tcuint;
      merge_opts : Tgit_merge_options;
      checkout_opts : Tgit_checkout_options;
    end;

function git_revert_options_init(var opts:Tgit_revert_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_revert_options_init';
function git_revert_commit(var out:Pgit_index; var repo:Tgit_repository; var revert_commit:Tgit_commit; var our_commit:Tgit_commit; mainline:Tcuint; 
           var merge_options:Tgit_merge_options):Tcint;cdecl;external External_library name 'git_revert_commit';
function git_revert(var repo:Tgit_repository; var commit:Tgit_commit; var given_opts:Tgit_revert_options):Tcint;cdecl;external External_library name 'git_revert';
function git_revparse_single(var out:Pgit_object; var repo:Tgit_repository; spec:pcchar):Tcint;cdecl;external External_library name 'git_revparse_single';
function git_revparse_ext(var object_out:Pgit_object; var reference_out:Pgit_reference; var repo:Tgit_repository; spec:pcchar):Tcint;cdecl;external External_library name 'git_revparse_ext';
type
  Tgit_revparse_mode_t =  Longint;
  Const
    GIT_REVPARSE_SINGLE = 1 shl 0;
    GIT_REVPARSE_RANGE = 1 shl 1;
    GIT_REVPARSE_MERGE_BASE = 1 shl 2;

type
  Tgit_revspec = record
      from : Pgit_object;
      to : Pgit_object;
      flags : Tcuint;
    end;

function git_revparse(var revspec:Tgit_revspec; var repo:Tgit_repository; spec:pcchar):Tcint;cdecl;external External_library name 'git_revparse';
type
  Tgit_sort_t =  Longint;
  Const
    GIT_SORT_NONE = 0;
    GIT_SORT_TOPOLOGICAL = 1 shl 0;
    GIT_SORT_TIME = 1 shl 1;
    GIT_SORT_REVERSE = 1 shl 2;


function git_revwalk_new(var out:Pgit_revwalk; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_revwalk_new';
function git_revwalk_reset(var walker:Tgit_revwalk):Tcint;cdecl;external External_library name 'git_revwalk_reset';
function git_revwalk_push(var walk:Tgit_revwalk; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_revwalk_push';
function git_revwalk_push_glob(var walk:Tgit_revwalk; glob:pcchar):Tcint;cdecl;external External_library name 'git_revwalk_push_glob';
function git_revwalk_push_head(var walk:Tgit_revwalk):Tcint;cdecl;external External_library name 'git_revwalk_push_head';
function git_revwalk_hide(var walk:Tgit_revwalk; var commit_id:Tgit_oid):Tcint;cdecl;external External_library name 'git_revwalk_hide';
function git_revwalk_hide_glob(var walk:Tgit_revwalk; glob:pcchar):Tcint;cdecl;external External_library name 'git_revwalk_hide_glob';
function git_revwalk_hide_head(var walk:Tgit_revwalk):Tcint;cdecl;external External_library name 'git_revwalk_hide_head';
function git_revwalk_push_ref(var walk:Tgit_revwalk; refname:pcchar):Tcint;cdecl;external External_library name 'git_revwalk_push_ref';
function git_revwalk_hide_ref(var walk:Tgit_revwalk; refname:pcchar):Tcint;cdecl;external External_library name 'git_revwalk_hide_ref';
function git_revwalk_next(var out:Tgit_oid; var walk:Tgit_revwalk):Tcint;cdecl;external External_library name 'git_revwalk_next';
function git_revwalk_sorting(var walk:Tgit_revwalk; sort_mode:Tcuint):Tcint;cdecl;external External_library name 'git_revwalk_sorting';
function git_revwalk_push_range(var walk:Tgit_revwalk; range:pcchar):Tcint;cdecl;external External_library name 'git_revwalk_push_range';
function git_revwalk_simplify_first_parent(var walk:Tgit_revwalk):Tcint;cdecl;external External_library name 'git_revwalk_simplify_first_parent';
procedure git_revwalk_free(var walk:Tgit_revwalk);cdecl;external External_library name 'git_revwalk_free';
function git_revwalk_repository(var walk:Tgit_revwalk):Pgit_repository;cdecl;external External_library name 'git_revwalk_repository';
type

  Tgit_revwalk_hide_cb = function (var commit_id:Tgit_oid; payload:pointer):Tcint;cdecl;

function git_revwalk_add_hide_cb(var walk:Tgit_revwalk; hide_cb:Tgit_revwalk_hide_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_revwalk_add_hide_cb';
function git_signature_new(var out:Pgit_signature; name:pcchar; email:pcchar; time:Tgit_time_t; offset:Tcint):Tcint;cdecl;external External_library name 'git_signature_new';
function git_signature_now(var out:Pgit_signature; name:pcchar; email:pcchar):Tcint;cdecl;external External_library name 'git_signature_now';
function git_signature_default(var out:Pgit_signature; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_signature_default';
function git_signature_from_buffer(var out:Pgit_signature; buf:pcchar):Tcint;cdecl;external External_library name 'git_signature_from_buffer';
function git_signature_dup(var dest:Pgit_signature; var sig:Tgit_signature):Tcint;cdecl;external External_library name 'git_signature_dup';
procedure git_signature_free(var sig:Tgit_signature);cdecl;external External_library name 'git_signature_free';
type
  Tgit_stash_flags =  Longint;
  Const
    GIT_STASH_DEFAULT = 0;
    GIT_STASH_KEEP_INDEX = 1 shl 0;
    GIT_STASH_INCLUDE_UNTRACKED = 1 shl 1;
    GIT_STASH_INCLUDE_IGNORED = 1 shl 2;


function git_stash_save(var out:Tgit_oid; var repo:Tgit_repository; var stasher:Tgit_signature; message:pcchar; flags:Tuint32_t):Tcint;cdecl;external External_library name 'git_stash_save';
type
  Tgit_stash_apply_flags =  Longint;
  Const
    GIT_STASH_APPLY_DEFAULT = 0;
    GIT_STASH_APPLY_REINSTATE_INDEX = 1 shl 0;

type
  Tgit_stash_apply_progress_t =  Longint;
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

  Tgit_stash_apply_progress_cb = function (progress:Tgit_stash_apply_progress_t; payload:pointer):Tcint;cdecl;

  Tgit_stash_apply_options = record
      version : Tcuint;
      flags : Tuint32_t;
      checkout_options : Tgit_checkout_options;
      progress_cb : Tgit_stash_apply_progress_cb;
      progress_payload : pointer;
    end;

function git_stash_apply_options_init(var opts:Tgit_stash_apply_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_stash_apply_options_init';
function git_stash_apply(var repo:Tgit_repository; index:Tsize_t; var options:Tgit_stash_apply_options):Tcint;cdecl;external External_library name 'git_stash_apply';
type

  Tgit_stash_cb = function (index:Tsize_t; message:pcchar; var stash_id:Tgit_oid; payload:pointer):Tcint;cdecl;

function git_stash_foreach(var repo:Tgit_repository; callback:Tgit_stash_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_stash_foreach';
function git_stash_drop(var repo:Tgit_repository; index:Tsize_t):Tcint;cdecl;external External_library name 'git_stash_drop';
function git_stash_pop(var repo:Tgit_repository; index:Tsize_t; var options:Tgit_stash_apply_options):Tcint;cdecl;external External_library name 'git_stash_pop';
type
  Tgit_status_t =  Longint;
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

  Tgit_status_cb = function (path:pcchar; status_flags:Tcuint; payload:pointer):Tcint;cdecl;

  Tgit_status_show_t =  Longint;
  Const
    GIT_STATUS_SHOW_INDEX_AND_WORKDIR = 0;
    GIT_STATUS_SHOW_INDEX_ONLY = 1;
    GIT_STATUS_SHOW_WORKDIR_ONLY = 2;

type
  Tgit_status_opt_t =  Longint;
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
  Tgit_status_options = record
      version : Tcuint;
      show : Tgit_status_show_t;
      flags : Tcuint;
      pathspec : Tgit_strarray;
      baseline : Pgit_tree;
    end;

function git_status_options_init(var opts:Tgit_status_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_status_options_init';
type
  Tgit_status_entry = record
      status : Tgit_status_t;
      head_to_index : Pgit_diff_delta;
      index_to_workdir : Pgit_diff_delta;
    end;

function git_status_foreach(var repo:Tgit_repository; callback:Tgit_status_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_status_foreach';
function git_status_foreach_ext(var repo:Tgit_repository; var opts:Tgit_status_options; callback:Tgit_status_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_status_foreach_ext';
function git_status_file(var status_flags:Tcuint; var repo:Tgit_repository; path:pcchar):Tcint;cdecl;external External_library name 'git_status_file';
function git_status_list_new(var out:Pgit_status_list; var repo:Tgit_repository; var opts:Tgit_status_options):Tcint;cdecl;external External_library name 'git_status_list_new';
function git_status_list_entrycount(var statuslist:Tgit_status_list):Tsize_t;cdecl;external External_library name 'git_status_list_entrycount';
function git_status_byindex(var statuslist:Tgit_status_list; idx:Tsize_t):Pgit_status_entry;cdecl;external External_library name 'git_status_byindex';
procedure git_status_list_free(var statuslist:Tgit_status_list);cdecl;external External_library name 'git_status_list_free';
function git_status_should_ignore(var ignored:Tcint; var repo:Tgit_repository; path:pcchar):Tcint;cdecl;external External_library name 'git_status_should_ignore';
type
  Tgit_submodule_status_t =  Longint;
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

  Tgit_submodule_cb = function (var sm:Tgit_submodule; name:pcchar; payload:pointer):Tcint;cdecl;

  Tgit_submodule_update_options = record
      version : Tcuint;
      checkout_opts : Tgit_checkout_options;
      fetch_opts : Tgit_fetch_options;
      allow_fetch : Tcint;
    end;

function git_submodule_update_options_init(var opts:Tgit_submodule_update_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_submodule_update_options_init';
function git_submodule_update(var submodule:Tgit_submodule; init:Tcint; var options:Tgit_submodule_update_options):Tcint;cdecl;external External_library name 'git_submodule_update';
function git_submodule_lookup(var out:Pgit_submodule; var repo:Tgit_repository; name:pcchar):Tcint;cdecl;external External_library name 'git_submodule_lookup';
procedure git_submodule_free(var submodule:Tgit_submodule);cdecl;external External_library name 'git_submodule_free';
function git_submodule_foreach(var repo:Tgit_repository; callback:Tgit_submodule_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_submodule_foreach';
function git_submodule_add_setup(var out:Pgit_submodule; var repo:Tgit_repository; url:pcchar; path:pcchar; use_gitlink:Tcint):Tcint;cdecl;external External_library name 'git_submodule_add_setup';
function git_submodule_clone(var out:Pgit_repository; var submodule:Tgit_submodule; var opts:Tgit_submodule_update_options):Tcint;cdecl;external External_library name 'git_submodule_clone';
function git_submodule_add_finalize(var submodule:Tgit_submodule):Tcint;cdecl;external External_library name 'git_submodule_add_finalize';
function git_submodule_add_to_index(var submodule:Tgit_submodule; write_index:Tcint):Tcint;cdecl;external External_library name 'git_submodule_add_to_index';
function git_submodule_owner(var submodule:Tgit_submodule):Pgit_repository;cdecl;external External_library name 'git_submodule_owner';
function git_submodule_name(var submodule:Tgit_submodule):pcchar;cdecl;external External_library name 'git_submodule_name';
function git_submodule_path(var submodule:Tgit_submodule):pcchar;cdecl;external External_library name 'git_submodule_path';
function git_submodule_url(var submodule:Tgit_submodule):pcchar;cdecl;external External_library name 'git_submodule_url';
function git_submodule_resolve_url(var out:Tgit_buf; var repo:Tgit_repository; url:pcchar):Tcint;cdecl;external External_library name 'git_submodule_resolve_url';
function git_submodule_branch(var submodule:Tgit_submodule):pcchar;cdecl;external External_library name 'git_submodule_branch';
function git_submodule_set_branch(var repo:Tgit_repository; name:pcchar; branch:pcchar):Tcint;cdecl;external External_library name 'git_submodule_set_branch';
function git_submodule_set_url(var repo:Tgit_repository; name:pcchar; url:pcchar):Tcint;cdecl;external External_library name 'git_submodule_set_url';
function git_submodule_index_id(var submodule:Tgit_submodule):Pgit_oid;cdecl;external External_library name 'git_submodule_index_id';
function git_submodule_head_id(var submodule:Tgit_submodule):Pgit_oid;cdecl;external External_library name 'git_submodule_head_id';
function git_submodule_wd_id(var submodule:Tgit_submodule):Pgit_oid;cdecl;external External_library name 'git_submodule_wd_id';
function git_submodule_ignore(var submodule:Tgit_submodule):Tgit_submodule_ignore_t;cdecl;external External_library name 'git_submodule_ignore';
function git_submodule_set_ignore(var repo:Tgit_repository; name:pcchar; ignore:Tgit_submodule_ignore_t):Tcint;cdecl;external External_library name 'git_submodule_set_ignore';
function git_submodule_update_strategy(var submodule:Tgit_submodule):Tgit_submodule_update_t;cdecl;external External_library name 'git_submodule_update_strategy';
function git_submodule_set_update(var repo:Tgit_repository; name:pcchar; update:Tgit_submodule_update_t):Tcint;cdecl;external External_library name 'git_submodule_set_update';
function git_submodule_fetch_recurse_submodules(var submodule:Tgit_submodule):Tgit_submodule_recurse_t;cdecl;external External_library name 'git_submodule_fetch_recurse_submodules';
function git_submodule_set_fetch_recurse_submodules(var repo:Tgit_repository; name:pcchar; fetch_recurse_submodules:Tgit_submodule_recurse_t):Tcint;cdecl;external External_library name 'git_submodule_set_fetch_recurse_submodules';
function git_submodule_init(var submodule:Tgit_submodule; overwrite:Tcint):Tcint;cdecl;external External_library name 'git_submodule_init';
function git_submodule_repo_init(var out:Pgit_repository; var sm:Tgit_submodule; use_gitlink:Tcint):Tcint;cdecl;external External_library name 'git_submodule_repo_init';
function git_submodule_sync(var submodule:Tgit_submodule):Tcint;cdecl;external External_library name 'git_submodule_sync';
function git_submodule_open(var repo:Pgit_repository; var submodule:Tgit_submodule):Tcint;cdecl;external External_library name 'git_submodule_open';
function git_submodule_reload(var submodule:Tgit_submodule; force:Tcint):Tcint;cdecl;external External_library name 'git_submodule_reload';
function git_submodule_status(var status:Tcuint; var repo:Tgit_repository; name:pcchar; ignore:Tgit_submodule_ignore_t):Tcint;cdecl;external External_library name 'git_submodule_status';
function git_submodule_location(var location_status:Tcuint; var submodule:Tgit_submodule):Tcint;cdecl;external External_library name 'git_submodule_location';
function git_tag_lookup(var out:Pgit_tag; var repo:Tgit_repository; var id:Tgit_oid):Tcint;cdecl;external External_library name 'git_tag_lookup';
function git_tag_lookup_prefix(var out:Pgit_tag; var repo:Tgit_repository; var id:Tgit_oid; len:Tsize_t):Tcint;cdecl;external External_library name 'git_tag_lookup_prefix';
procedure git_tag_free(var tag:Tgit_tag);cdecl;external External_library name 'git_tag_free';
function git_tag_id(var tag:Tgit_tag):Pgit_oid;cdecl;external External_library name 'git_tag_id';
function git_tag_owner(var tag:Tgit_tag):Pgit_repository;cdecl;external External_library name 'git_tag_owner';
function git_tag_target(var target_out:Pgit_object; var tag:Tgit_tag):Tcint;cdecl;external External_library name 'git_tag_target';
function git_tag_target_id(var tag:Tgit_tag):Pgit_oid;cdecl;external External_library name 'git_tag_target_id';
function git_tag_target_type(var tag:Tgit_tag):Tgit_object_t;cdecl;external External_library name 'git_tag_target_type';
function git_tag_name(var tag:Tgit_tag):pcchar;cdecl;external External_library name 'git_tag_name';
function git_tag_tagger(var tag:Tgit_tag):Pgit_signature;cdecl;external External_library name 'git_tag_tagger';
function git_tag_message(var tag:Tgit_tag):pcchar;cdecl;external External_library name 'git_tag_message';
function git_tag_create(var oid:Tgit_oid; var repo:Tgit_repository; tag_name:pcchar; var target:Tgit_object; var tagger:Tgit_signature; 
           message:pcchar; force:Tcint):Tcint;cdecl;external External_library name 'git_tag_create';
function git_tag_annotation_create(var oid:Tgit_oid; var repo:Tgit_repository; tag_name:pcchar; var target:Tgit_object; var tagger:Tgit_signature; 
           message:pcchar):Tcint;cdecl;external External_library name 'git_tag_annotation_create';
function git_tag_create_from_buffer(var oid:Tgit_oid; var repo:Tgit_repository; buffer:pcchar; force:Tcint):Tcint;cdecl;external External_library name 'git_tag_create_from_buffer';
function git_tag_create_lightweight(var oid:Tgit_oid; var repo:Tgit_repository; tag_name:pcchar; var target:Tgit_object; force:Tcint):Tcint;cdecl;external External_library name 'git_tag_create_lightweight';
function git_tag_delete(var repo:Tgit_repository; tag_name:pcchar):Tcint;cdecl;external External_library name 'git_tag_delete';
function git_tag_list(var tag_names:Tgit_strarray; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_tag_list';
function git_tag_list_match(var tag_names:Tgit_strarray; pattern:pcchar; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_tag_list_match';
type

  Tgit_tag_foreach_cb = function (name:pcchar; var oid:Tgit_oid; payload:pointer):Tcint;cdecl;

function git_tag_foreach(var repo:Tgit_repository; callback:Tgit_tag_foreach_cb; payload:pointer):Tcint;cdecl;external External_library name 'git_tag_foreach';
function git_tag_peel(var tag_target_out:Pgit_object; var tag:Tgit_tag):Tcint;cdecl;external External_library name 'git_tag_peel';
function git_tag_dup(var out:Pgit_tag; var source:Tgit_tag):Tcint;cdecl;external External_library name 'git_tag_dup';
function git_transaction_new(var out:Pgit_transaction; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_transaction_new';
function git_transaction_lock_ref(var tx:Tgit_transaction; refname:pcchar):Tcint;cdecl;external External_library name 'git_transaction_lock_ref';
function git_transaction_set_target(var tx:Tgit_transaction; refname:pcchar; var target:Tgit_oid; var sig:Tgit_signature; msg:pcchar):Tcint;cdecl;external External_library name 'git_transaction_set_target';
function git_transaction_set_symbolic_target(var tx:Tgit_transaction; refname:pcchar; target:pcchar; var sig:Tgit_signature; msg:pcchar):Tcint;cdecl;external External_library name 'git_transaction_set_symbolic_target';
function git_transaction_set_reflog(var tx:Tgit_transaction; refname:pcchar; var reflog:Tgit_reflog):Tcint;cdecl;external External_library name 'git_transaction_set_reflog';
function git_transaction_remove(var tx:Tgit_transaction; refname:pcchar):Tcint;cdecl;external External_library name 'git_transaction_remove';
function git_transaction_commit(var tx:Tgit_transaction):Tcint;cdecl;external External_library name 'git_transaction_commit';
procedure git_transaction_free(var tx:Tgit_transaction);cdecl;external External_library name 'git_transaction_free';
function git_worktree_list(var out:Tgit_strarray; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_worktree_list';
function git_worktree_lookup(var out:Pgit_worktree; var repo:Tgit_repository; name:pcchar):Tcint;cdecl;external External_library name 'git_worktree_lookup';
function git_worktree_open_from_repository(var out:Pgit_worktree; var repo:Tgit_repository):Tcint;cdecl;external External_library name 'git_worktree_open_from_repository';
procedure git_worktree_free(var wt:Tgit_worktree);cdecl;external External_library name 'git_worktree_free';
function git_worktree_validate(var wt:Tgit_worktree):Tcint;cdecl;external External_library name 'git_worktree_validate';
type
  Tgit_worktree_add_options = record
      version : Tcuint;
      lock : Tcint;
      ref : Pgit_reference;
    end;

function git_worktree_add_options_init(var opts:Tgit_worktree_add_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_worktree_add_options_init';
function git_worktree_add(var out:Pgit_worktree; var repo:Tgit_repository; name:pcchar; path:pcchar; var opts:Tgit_worktree_add_options):Tcint;cdecl;external External_library name 'git_worktree_add';
function git_worktree_lock(var wt:Tgit_worktree; reason:pcchar):Tcint;cdecl;external External_library name 'git_worktree_lock';
function git_worktree_unlock(var wt:Tgit_worktree):Tcint;cdecl;external External_library name 'git_worktree_unlock';
function git_worktree_is_locked(var reason:Tgit_buf; var wt:Tgit_worktree):Tcint;cdecl;external External_library name 'git_worktree_is_locked';
function git_worktree_name(var wt:Tgit_worktree):pcchar;cdecl;external External_library name 'git_worktree_name';
function git_worktree_path(var wt:Tgit_worktree):pcchar;cdecl;external External_library name 'git_worktree_path';
type
  Tgit_worktree_prune_t =  Longint;
  Const
    GIT_WORKTREE_PRUNE_VALID = 1 shl 0;
    GIT_WORKTREE_PRUNE_LOCKED = 1 shl 1;
    GIT_WORKTREE_PRUNE_WORKING_TREE = 1 shl 2;

type
  Tgit_worktree_prune_options = record
      version : Tcuint;
      flags : Tuint32_t;
    end;

function git_worktree_prune_options_init(var opts:Tgit_worktree_prune_options; version:Tcuint):Tcint;cdecl;external External_library name 'git_worktree_prune_options_init';
function git_worktree_is_prunable(var wt:Tgit_worktree; var opts:Tgit_worktree_prune_options):Tcint;cdecl;external External_library name 'git_worktree_is_prunable';
function git_worktree_prune(var wt:Tgit_worktree; var opts:Tgit_worktree_prune_options):Tcint;cdecl;external External_library name 'git_worktree_prune';

implementation


end.
