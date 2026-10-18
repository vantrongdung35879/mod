.class public final enum Lcom/huawei/devices/a/a$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/devices/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/devices/a/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/devices/a/a$c;

.field public static final enum b:Lcom/huawei/devices/a/a$c;

.field public static final enum c:Lcom/huawei/devices/a/a$c;

.field public static final enum d:Lcom/huawei/devices/a/a$c;

.field public static final enum e:Lcom/huawei/devices/a/a$c;

.field private static final synthetic g:[Lcom/huawei/devices/a/a$c;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/huawei/devices/a/a$c;

    const-string v1, "haptic.camera.focus"

    const-string v2, "FOCUS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/huawei/devices/a/a$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/devices/a/a$c;->a:Lcom/huawei/devices/a/a$c;

    new-instance v1, Lcom/huawei/devices/a/a$c;

    const-string v2, "haptic.camera.gear_slip"

    const-string v4, "GEAR_SLIP"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/huawei/devices/a/a$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/huawei/devices/a/a$c;->b:Lcom/huawei/devices/a/a$c;

    new-instance v2, Lcom/huawei/devices/a/a$c;

    const-string v4, "haptic.camera.portrait_switch"

    const-string v6, "PORTAIT_SWITH"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/huawei/devices/a/a$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/huawei/devices/a/a$c;->c:Lcom/huawei/devices/a/a$c;

    new-instance v4, Lcom/huawei/devices/a/a$c;

    const-string v6, "haptic.camera.mode_switch"

    const-string v8, "MODE_SWITCH"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/huawei/devices/a/a$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/huawei/devices/a/a$c;->d:Lcom/huawei/devices/a/a$c;

    new-instance v6, Lcom/huawei/devices/a/a$c;

    const-string v8, "haptic.camera.long_press"

    const-string v10, "LONG_PRESS"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/huawei/devices/a/a$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/huawei/devices/a/a$c;->e:Lcom/huawei/devices/a/a$c;

    const/4 v8, 0x5

    new-array v8, v8, [Lcom/huawei/devices/a/a$c;

    aput-object v0, v8, v3

    aput-object v1, v8, v5

    aput-object v2, v8, v7

    aput-object v4, v8, v9

    aput-object v6, v8, v11

    sput-object v8, Lcom/huawei/devices/a/a$c;->g:[Lcom/huawei/devices/a/a$c;

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

    iput-object p3, p0, Lcom/huawei/devices/a/a$c;->f:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/devices/a/a$c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/devices/a/a$c;
    .locals 1

    const-class v0, Lcom/huawei/devices/a/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/devices/a/a$c;

    return-object p0
.end method

.method public static values()[Lcom/huawei/devices/a/a$c;
    .locals 1

    sget-object v0, Lcom/huawei/devices/a/a$c;->g:[Lcom/huawei/devices/a/a$c;

    invoke-virtual {v0}, [Lcom/huawei/devices/a/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/devices/a/a$c;

    return-object v0
.end method
