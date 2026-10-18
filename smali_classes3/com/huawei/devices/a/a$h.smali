.class public final enum Lcom/huawei/devices/a/a$h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/devices/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/devices/a/a$h;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/devices/a/a$h;

.field public static final enum b:Lcom/huawei/devices/a/a$h;

.field public static final enum c:Lcom/huawei/devices/a/a$h;

.field public static final enum d:Lcom/huawei/devices/a/a$h;

.field private static final synthetic f:[Lcom/huawei/devices/a/a$h;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/huawei/devices/a/a$h;

    const-string v1, "haptic.contacts.letters_index"

    const-string v2, "LETTERS_INDEX"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/huawei/devices/a/a$h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/devices/a/a$h;->a:Lcom/huawei/devices/a/a$h;

    new-instance v1, Lcom/huawei/devices/a/a$h;

    const-string v2, "haptic.dialler.click"

    const-string v4, "CLICK"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/huawei/devices/a/a$h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/huawei/devices/a/a$h;->b:Lcom/huawei/devices/a/a$h;

    new-instance v2, Lcom/huawei/devices/a/a$h;

    const-string v4, "haptic.dialler.long_press"

    const-string v6, "LONGPRESS"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/huawei/devices/a/a$h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/huawei/devices/a/a$h;->c:Lcom/huawei/devices/a/a$h;

    new-instance v4, Lcom/huawei/devices/a/a$h;

    const-string v6, "haptic.dialler.delete_long_press"

    const-string v8, "DELTE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/huawei/devices/a/a$h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/huawei/devices/a/a$h;->d:Lcom/huawei/devices/a/a$h;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/huawei/devices/a/a$h;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lcom/huawei/devices/a/a$h;->f:[Lcom/huawei/devices/a/a$h;

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

    iput-object p3, p0, Lcom/huawei/devices/a/a$h;->e:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/devices/a/a$h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/devices/a/a$h;
    .locals 1

    const-class v0, Lcom/huawei/devices/a/a$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/devices/a/a$h;

    return-object p0
.end method

.method public static values()[Lcom/huawei/devices/a/a$h;
    .locals 1

    sget-object v0, Lcom/huawei/devices/a/a$h;->f:[Lcom/huawei/devices/a/a$h;

    invoke-virtual {v0}, [Lcom/huawei/devices/a/a$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/devices/a/a$h;

    return-object v0
.end method
