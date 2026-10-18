.class public final enum Lcom/huawei/devices/a/a$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/devices/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/devices/a/a$g;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/devices/a/a$g;

.field private static final synthetic c:[Lcom/huawei/devices/a/a$g;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/huawei/devices/a/a$g;

    const-string v1, "LONG_PRESS"

    const-string v2, "haptic.desktop.long_press"

    invoke-direct {v0, v1, v2}, Lcom/huawei/devices/a/a$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/devices/a/a$g;->a:Lcom/huawei/devices/a/a$g;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/huawei/devices/a/a$g;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/huawei/devices/a/a$g;->c:[Lcom/huawei/devices/a/a$g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/huawei/devices/a/a$g;->b:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/devices/a/a$g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/devices/a/a$g;
    .locals 1

    const-class v0, Lcom/huawei/devices/a/a$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/devices/a/a$g;

    return-object p0
.end method

.method public static values()[Lcom/huawei/devices/a/a$g;
    .locals 1

    sget-object v0, Lcom/huawei/devices/a/a$g;->c:[Lcom/huawei/devices/a/a$g;

    invoke-virtual {v0}, [Lcom/huawei/devices/a/a$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/devices/a/a$g;

    return-object v0
.end method
