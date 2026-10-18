.class public final Lcom/google/android/play/core/splitinstall/internal/zzao;
.super Ljava/lang/Object;
.source "com.google.android.play:feature-delivery@@2.1.0"


# direct methods
.method public static zza()Lcom/google/android/play/core/splitinstall/internal/zzan;
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/play/core/splitinstall/internal/zzbe;

    invoke-direct {v0}, Lcom/google/android/play/core/splitinstall/internal/zzbe;-><init>()V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/android/play/core/splitinstall/internal/zzbd;

    invoke-direct {v0}, Lcom/google/android/play/core/splitinstall/internal/zzbd;-><init>()V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/google/android/play/core/splitinstall/internal/zzba;

    invoke-direct {v0}, Lcom/google/android/play/core/splitinstall/internal/zzba;-><init>()V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/google/android/play/core/splitinstall/internal/zzaz;

    invoke-direct {v0}, Lcom/google/android/play/core/splitinstall/internal/zzaz;-><init>()V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/google/android/play/core/splitinstall/internal/zzay;

    invoke-direct {v0}, Lcom/google/android/play/core/splitinstall/internal/zzay;-><init>()V

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/google/android/play/core/splitinstall/internal/zzau;

    invoke-direct {v0}, Lcom/google/android/play/core/splitinstall/internal/zzau;-><init>()V

    return-object v0

    :pswitch_6
    new-instance v0, Lcom/google/android/play/core/splitinstall/internal/zzat;

    invoke-direct {v0}, Lcom/google/android/play/core/splitinstall/internal/zzat;-><init>()V

    return-object v0

    :cond_0
    :goto_0
    new-instance v0, Lcom/google/android/play/core/splitinstall/internal/zzbg;

    invoke-direct {v0}, Lcom/google/android/play/core/splitinstall/internal/zzbg;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
