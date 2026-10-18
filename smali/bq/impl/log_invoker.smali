.class public Lbq/impl/log_invoker;
.super Ljava/lang/Object;
.source "log_invoker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native __api_create_log(Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;)J
.end method

.method public static native __api_enable_auto_crash_handler()V
.end method

.method public static native __api_fetch_and_remove_console_buffer(Ljava/lang/Object;)Z
.end method

.method public static native __api_force_flush(J)V
.end method

.method public static native __api_get_file_base_dir(I)Ljava/lang/String;
.end method

.method public static native __api_get_log_categories_count(J)J
.end method

.method public static native __api_get_log_category_masks_array_by_log_id(J)Ljava/nio/ByteBuffer;
.end method

.method public static native __api_get_log_category_name_by_index(JJ)Ljava/lang/String;
.end method

.method public static native __api_get_log_id_by_index(J)J
.end method

.method public static native __api_get_log_merged_log_level_bitmap_by_log_id(J)Ljava/nio/ByteBuffer;
.end method

.method public static native __api_get_log_name_by_id(J)Ljava/lang/String;
.end method

.method public static native __api_get_log_print_stack_level_bitmap_by_log_id(J)Ljava/nio/ByteBuffer;
.end method

.method public static native __api_get_log_version()Ljava/lang/String;
.end method

.method public static native __api_get_logs_count()J
.end method

.method public static native __api_log_decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native __api_log_decoder_create(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static native __api_log_decoder_decode(JLbq/def/string_holder;)I
.end method

.method public static native __api_log_decoder_destroy(J)V
.end method

.method public static native __api_log_device_console(ILjava/lang/String;)V
.end method

.method public static native __api_log_reset_config(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native __api_log_write_begin(JBJJLjava/lang/String;JZ)[Ljava/nio/ByteBuffer;
.end method

.method public static native __api_log_write_finish(J)V
.end method

.method public static native __api_mark_jvm_destroyed()V
.end method

.method public static native __api_reset_base_dir(ILjava/lang/String;)V
.end method

.method public static native __api_set_appender_enable(JLjava/lang/String;Z)V
.end method

.method public static native __api_set_console_buffer_enable(Z)V
.end method

.method public static native __api_set_console_callback(Z)V
.end method

.method public static native __api_take_snapshot_string(JLjava/lang/String;)Ljava/lang/String;
.end method
