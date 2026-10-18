.class public final enum Lcom/huawei/devices/a/a$k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/devices/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/devices/a/a$k;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/devices/a/a$k;

.field public static final enum b:Lcom/huawei/devices/a/a$k;

.field public static final enum c:Lcom/huawei/devices/a/a$k;

.field public static final enum d:Lcom/huawei/devices/a/a$k;

.field public static final enum e:Lcom/huawei/devices/a/a$k;

.field public static final enum f:Lcom/huawei/devices/a/a$k;

.field public static final enum g:Lcom/huawei/devices/a/a$k;

.field private static final synthetic i:[Lcom/huawei/devices/a/a$k;


# instance fields
.field private final h:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/huawei/devices/a/a$k;

    const-string v1, "haptic.lockscreen.unlock_slip"

    const-string v2, "UNLOCK_SLIP"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/huawei/devices/a/a$k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/devices/a/a$k;->a:Lcom/huawei/devices/a/a$k;

    new-instance v1, Lcom/huawei/devices/a/a$k;

    const-string v2, "haptic.lockscreen.unlock_click"

    const-string v4, "UNLOCK_CLICK"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/huawei/devices/a/a$k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/huawei/devices/a/a$k;->b:Lcom/huawei/devices/a/a$k;

    new-instance v2, Lcom/huawei/devices/a/a$k;

    const-string v4, "haptic.lockscreen.number_unlock_fail"

    const-string v6, "NUMBER_UNLOCK_FAIL"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/huawei/devices/a/a$k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/huawei/devices/a/a$k;->c:Lcom/huawei/devices/a/a$k;

    new-instance v4, Lcom/huawei/devices/a/a$k;

    const-string v6, "haptic.lockscreen.face_unlock_fail"

    const-string v8, "FACE_UNLOCK_FAIL"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/huawei/devices/a/a$k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/huawei/devices/a/a$k;->d:Lcom/huawei/devices/a/a$k;

    new-instance v6, Lcom/huawei/devices/a/a$k;

    const-string v8, "haptic.lockscreen.face_unlock_retry"

    const-string v10, "FACE_UNLOCK_RETRY"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/huawei/devices/a/a$k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/huawei/devices/a/a$k;->e:Lcom/huawei/devices/a/a$k;

    new-instance v8, Lcom/huawei/devices/a/a$k;

    const-string v10, "haptic.lockscreen.upglide_switches"

    const-string v12, "UPGLIDE_SWITCH"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/huawei/devices/a/a$k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/huawei/devices/a/a$k;->f:Lcom/huawei/devices/a/a$k;

    new-instance v10, Lcom/huawei/devices/a/a$k;

    const-string v12, "haptic.lockscreen.onehand_keyboard_switch"

    const-string v14, "ONEHAND_KEYBOARD_SWITCH"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/huawei/devices/a/a$k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/huawei/devices/a/a$k;->g:Lcom/huawei/devices/a/a$k;

    const/4 v12, 0x7

    new-array v12, v12, [Lcom/huawei/devices/a/a$k;

    aput-object v0, v12, v3

    aput-object v1, v12, v5

    aput-object v2, v12, v7

    aput-object v4, v12, v9

    aput-object v6, v12, v11

    aput-object v8, v12, v13

    aput-object v10, v12, v15

    sput-object v12, Lcom/huawei/devices/a/a$k;->i:[Lcom/huawei/devices/a/a$k;

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

    iput-object p3, p0, Lcom/huawei/devices/a/a$k;->h:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/devices/a/a$k;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/devices/a/a$k;
    .locals 1

    const-class v0, Lcom/huawei/devices/a/a$k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/devices/a/a$k;

    return-object p0
.end method

.method public static values()[Lcom/huawei/devices/a/a$k;
    .locals 1

    sget-object v0, Lcom/huawei/devices/a/a$k;->i:[Lcom/huawei/devices/a/a$k;

    invoke-virtual {v0}, [Lcom/huawei/devices/a/a$k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/devices/a/a$k;

    return-object v0
.end method
