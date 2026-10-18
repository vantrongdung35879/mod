.class public final Lcom/garena/android/gpns/storage/LocalStorage;
.super Ljava/lang/Object;
.source "LocalStorage.java"


# static fields
.field private static final ACK_MSG_LIST:Ljava/lang/String; = "ACK_MSG_LIST"

.field private static final CONNECTION_ADDRESS:Ljava/lang/String; = "CONNECTION_ADDRESS"

.field private static final CONNECTION_ID:Ljava/lang/String; = "CONNECTION_ID"

.field private static final DEVICE_ID:Ljava/lang/String; = "DEVICE_ID"

.field private static final LAST_REGION_REFRESH_TIME:Ljava/lang/String; = "LAST_REGION_REFRESH_TIME"

.field private static final REGIONAL_SERVER_ADDRESS:Ljava/lang/String; = "REGIONAL_SERVER_ADDRESS"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId(Landroid/content/Context;)J
    .locals 3

    .line 23
    invoke-static {p0}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->getInstance(Landroid/content/Context;)Lcom/garena/android/gpns/storage/SharedPreferenceStore;

    move-result-object p0

    const-string v0, "DEVICE_ID"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDeviceIdString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 27
    invoke-static {p0}, Lcom/garena/android/gpns/storage/LocalStorage;->getDeviceId(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    .line 28
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static setDeviceId(Landroid/content/Context;J)V
    .locals 1

    .line 32
    invoke-static {p0}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->getInstance(Landroid/content/Context;)Lcom/garena/android/gpns/storage/SharedPreferenceStore;

    move-result-object p0

    const-string v0, "DEVICE_ID"

    invoke-virtual {p0, v0, p1, p2}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->putLong(Ljava/lang/String;J)V

    return-void
.end method
