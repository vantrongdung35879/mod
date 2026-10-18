.class public final enum Lcom/huawei/devices/a/a$o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/devices/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/devices/a/a$o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/devices/a/a$o;

.field public static final enum b:Lcom/huawei/devices/a/a$o;

.field public static final enum c:Lcom/huawei/devices/a/a$o;

.field private static final synthetic e:[Lcom/huawei/devices/a/a$o;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/huawei/devices/a/a$o;

    const-string v1, "haptic.volume.trigger"

    const-string v2, "TRIGGER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/huawei/devices/a/a$o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/devices/a/a$o;->a:Lcom/huawei/devices/a/a$o;

    new-instance v1, Lcom/huawei/devices/a/a$o;

    const-string v2, "haptic.volume.change"

    const-string v4, "CHANGE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/huawei/devices/a/a$o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/huawei/devices/a/a$o;->b:Lcom/huawei/devices/a/a$o;

    new-instance v2, Lcom/huawei/devices/a/a$o;

    const-string v4, "haptic.volume.maxmin"

    const-string v6, "MAXMIN"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/huawei/devices/a/a$o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/huawei/devices/a/a$o;->c:Lcom/huawei/devices/a/a$o;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/huawei/devices/a/a$o;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lcom/huawei/devices/a/a$o;->e:[Lcom/huawei/devices/a/a$o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/huawei/devices/a/a$o;->d:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/devices/a/a$o;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/devices/a/a$o;
    .locals 1

    const-class v0, Lcom/huawei/devices/a/a$o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/devices/a/a$o;

    return-object p0
.end method

.method public static values()[Lcom/huawei/devices/a/a$o;
    .locals 1

    sget-object v0, Lcom/huawei/devices/a/a$o;->e:[Lcom/huawei/devices/a/a$o;

    invoke-virtual {v0}, [Lcom/huawei/devices/a/a$o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/devices/a/a$o;

    return-object v0
.end method
