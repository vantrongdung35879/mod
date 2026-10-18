.class public Lcom/ihoc/mgpa/toolkit/privacy/PrivacyDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile sCacheManufacturer:Ljava/lang/String;

.field private static volatile sCachedModel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getManufacturer()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/ihoc/mgpa/toolkit/privacy/PrivacyDeviceInfo;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/toolkit/privacy/PrivacyDeviceInfo;->sCacheManufacturer:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/ihoc/mgpa/toolkit/privacy/PrivacyDeviceInfo;->sCacheManufacturer:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    :try_start_1
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v1, Lcom/ihoc/mgpa/toolkit/privacy/PrivacyDeviceInfo;->sCacheManufacturer:Ljava/lang/String;

    .line 5
    sget-object v1, Lcom/ihoc/mgpa/toolkit/privacy/PrivacyDeviceInfo;->sCacheManufacturer:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getModel()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/ihoc/mgpa/toolkit/privacy/PrivacyDeviceInfo;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/toolkit/privacy/PrivacyDeviceInfo;->sCachedModel:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/ihoc/mgpa/toolkit/privacy/PrivacyDeviceInfo;->sCachedModel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    :try_start_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v1, Lcom/ihoc/mgpa/toolkit/privacy/PrivacyDeviceInfo;->sCachedModel:Ljava/lang/String;

    .line 5
    sget-object v1, Lcom/ihoc/mgpa/toolkit/privacy/PrivacyDeviceInfo;->sCachedModel:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
