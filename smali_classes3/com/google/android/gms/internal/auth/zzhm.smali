.class public final Lcom/google/android/gms/internal/auth/zzhm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzhk;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/auth/zzcz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/auth/zzcz<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzb:Lcom/google/android/gms/internal/auth/zzcz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/auth/zzcz<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzc:Lcom/google/android/gms/internal/auth/zzcz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/auth/zzcz<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzd:Lcom/google/android/gms/internal/auth/zzcz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/auth/zzcz<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zze:Lcom/google/android/gms/internal/auth/zzcz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/auth/zzcz<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzf:Lcom/google/android/gms/internal/auth/zzcz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/auth/zzcz<",
            "Lcom/google/android/gms/internal/auth/zzhi;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzg:Lcom/google/android/gms/internal/auth/zzcz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/auth/zzcz<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzh:Lcom/google/android/gms/internal/auth/zzcz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/auth/zzcz<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzi:Lcom/google/android/gms/internal/auth/zzcz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/auth/zzcz<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzj:Lcom/google/android/gms/internal/auth/zzcz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/auth/zzcz<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzk:Lcom/google/android/gms/internal/auth/zzcz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/auth/zzcz<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzl:Lcom/google/android/gms/internal/auth/zzcz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/auth/zzcz<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzm:Lcom/google/android/gms/internal/auth/zzcz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/auth/zzcz<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzn:Lcom/google/android/gms/internal/auth/zzcz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/auth/zzcz<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/google/android/gms/internal/auth/zzcx;

    const-string v1, "com.google.android.gms.auth_account"

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/internal/auth/zzcq;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/zzcx;-><init>(Landroid/net/Uri;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzcx;->zza()Lcom/google/android/gms/internal/auth/zzcx;

    move-result-object v0

    .line 3
    const-string v1, "getTokenRefactor__account_data_service_sample_percentage"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/auth/zzcx;->zzb(Ljava/lang/String;D)Lcom/google/android/gms/internal/auth/zzcz;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhm;->zza:Lcom/google/android/gms/internal/auth/zzcz;

    .line 4
    const-string v1, "getTokenRefactor__account_data_service_tokenAPI_usable"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/auth/zzcx;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzcz;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhm;->zzb:Lcom/google/android/gms/internal/auth/zzcz;

    .line 5
    const-string v1, "getTokenRefactor__account_manager_timeout_seconds"

    const-wide/16 v5, 0x14

    invoke-virtual {v0, v1, v5, v6}, Lcom/google/android/gms/internal/auth/zzcx;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/internal/auth/zzcz;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhm;->zzc:Lcom/google/android/gms/internal/auth/zzcz;

    const-string v1, "getTokenRefactor__android_id_shift"

    const-wide/16 v7, 0x0

    .line 6
    invoke-virtual {v0, v1, v7, v8}, Lcom/google/android/gms/internal/auth/zzcx;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/internal/auth/zzcz;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhm;->zzd:Lcom/google/android/gms/internal/auth/zzcz;

    .line 7
    const-string v1, "getTokenRefactor__authenticator_logic_improved"

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/internal/auth/zzcx;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzcz;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhm;->zze:Lcom/google/android/gms/internal/auth/zzcz;

    :try_start_0
    const-string v1, "getTokenRefactor__blocked_packages"

    const/16 v8, 0x5a

    new-array v8, v8, [B

    fill-array-data v8, :array_0

    .line 8
    invoke-static {v8}, Lcom/google/android/gms/internal/auth/zzhi;->zzl([B)Lcom/google/android/gms/internal/auth/zzhi;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/internal/auth/zzhl;->zza:Lcom/google/android/gms/internal/auth/zzhl;

    .line 9
    invoke-virtual {v0, v1, v8, v9}, Lcom/google/android/gms/internal/auth/zzcx;->zze(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/auth/zzhl;)Lcom/google/android/gms/internal/auth/zzcz;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhm;->zzf:Lcom/google/android/gms/internal/auth/zzcz;
    :try_end_0
    .catch Lcom/google/android/gms/internal/auth/zzew; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    const-string v1, "getTokenRefactor__chimera_get_token_evolved"

    .line 11
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/auth/zzcx;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzcz;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhm;->zzg:Lcom/google/android/gms/internal/auth/zzcz;

    const-string v1, "getTokenRefactor__clear_token_timeout_seconds"

    .line 12
    invoke-virtual {v0, v1, v5, v6}, Lcom/google/android/gms/internal/auth/zzcx;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/internal/auth/zzcz;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhm;->zzh:Lcom/google/android/gms/internal/auth/zzcz;

    const-string v1, "getTokenRefactor__default_task_timeout_seconds"

    .line 13
    invoke-virtual {v0, v1, v5, v6}, Lcom/google/android/gms/internal/auth/zzcx;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/internal/auth/zzcz;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhm;->zzi:Lcom/google/android/gms/internal/auth/zzcz;

    const-string v1, "getTokenRefactor__gaul_accounts_api_evolved"

    .line 14
    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/internal/auth/zzcx;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzcz;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhm;->zzj:Lcom/google/android/gms/internal/auth/zzcz;

    const-string v1, "getTokenRefactor__gaul_token_api_evolved"

    .line 15
    invoke-virtual {v0, v1, v7}, Lcom/google/android/gms/internal/auth/zzcx;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzcz;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhm;->zzk:Lcom/google/android/gms/internal/auth/zzcz;

    const-string v1, "getTokenRefactor__get_token_timeout_seconds"

    const-wide/16 v5, 0x78

    .line 16
    invoke-virtual {v0, v1, v5, v6}, Lcom/google/android/gms/internal/auth/zzcx;->zzc(Ljava/lang/String;J)Lcom/google/android/gms/internal/auth/zzcz;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhm;->zzl:Lcom/google/android/gms/internal/auth/zzcz;

    const-string v1, "getTokenRefactor__gms_account_authenticator_evolved"

    .line 17
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/auth/zzcx;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/zzcz;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/auth/zzhm;->zzm:Lcom/google/android/gms/internal/auth/zzcz;

    const-string v1, "getTokenRefactor__gms_account_authenticator_sample_percentage"

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/auth/zzcx;->zzb(Ljava/lang/String;D)Lcom/google/android/gms/internal/auth/zzcz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/auth/zzhm;->zzn:Lcom/google/android/gms/internal/auth/zzcz;

    return-void

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Could not parse proto flag \"getTokenRefactor__blocked_packages\""

    .line 10
    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :array_0
    .array-data 1
        0xat
        0x13t
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x61t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x2et
        0x76t
        0x65t
        0x6et
        0x64t
        0x69t
        0x6et
        0x67t
        0xat
        0x20t
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x67t
        0x6ft
        0x6ft
        0x67t
        0x6ct
        0x65t
        0x2et
        0x61t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x2et
        0x61t
        0x70t
        0x70t
        0x73t
        0x2et
        0x6dt
        0x65t
        0x65t
        0x74t
        0x69t
        0x6et
        0x67t
        0x73t
        0xat
        0x21t
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x67t
        0x6ft
        0x6ft
        0x67t
        0x6ct
        0x65t
        0x2et
        0x61t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x2et
        0x61t
        0x70t
        0x70t
        0x73t
        0x2et
        0x6dt
        0x65t
        0x73t
        0x73t
        0x61t
        0x67t
        0x69t
        0x6et
        0x67t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/auth/zzhi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzhm;->zzf:Lcom/google/android/gms/internal/auth/zzcz;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzcz;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/zzhi;

    return-object v0
.end method

.method public final zzb()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzhm;->zzj:Lcom/google/android/gms/internal/auth/zzcz;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzcz;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzc()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzhm;->zzk:Lcom/google/android/gms/internal/auth/zzcz;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzcz;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
