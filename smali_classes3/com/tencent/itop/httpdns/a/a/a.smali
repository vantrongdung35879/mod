.class final Lcom/tencent/itop/httpdns/a/a/a;
.super Ljava/lang/Object;
.source "ClientConfig.java"


# static fields
.field static a:Ljava/lang/String; = "NULL"

.field static b:I = 0x3e8

.field static c:Ljava/lang/String; = "NULL"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 1

    .line 22
    invoke-static {}, Lcom/tencent/itop/httpdns/base/jni/JniWrapper;->getDnsKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
