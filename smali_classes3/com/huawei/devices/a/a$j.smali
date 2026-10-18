.class public final enum Lcom/huawei/devices/a/a$j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/devices/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/devices/a/a$j;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/devices/a/a$j;

.field public static final enum b:Lcom/huawei/devices/a/a$j;

.field public static final enum c:Lcom/huawei/devices/a/a$j;

.field private static final synthetic e:[Lcom/huawei/devices/a/a$j;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/huawei/devices/a/a$j;

    const-string v1, "haptic.gallery.albums_long_press"

    const-string v2, "ALBUMS_LONG_PRESS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/huawei/devices/a/a$j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/devices/a/a$j;->a:Lcom/huawei/devices/a/a$j;

    new-instance v1, Lcom/huawei/devices/a/a$j;

    const-string v2, "haptic.gallery.photos_long_press"

    const-string v4, "PHOTOS_LONG_PRESS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/huawei/devices/a/a$j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/huawei/devices/a/a$j;->b:Lcom/huawei/devices/a/a$j;

    new-instance v2, Lcom/huawei/devices/a/a$j;

    const-string v4, "haptic.gallery.upglide_related"

    const-string v6, "UPGLIDE_RELATED"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/huawei/devices/a/a$j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/huawei/devices/a/a$j;->c:Lcom/huawei/devices/a/a$j;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/huawei/devices/a/a$j;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lcom/huawei/devices/a/a$j;->e:[Lcom/huawei/devices/a/a$j;

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

    iput-object p3, p0, Lcom/huawei/devices/a/a$j;->d:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/devices/a/a$j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/devices/a/a$j;
    .locals 1

    const-class v0, Lcom/huawei/devices/a/a$j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/devices/a/a$j;

    return-object p0
.end method

.method public static values()[Lcom/huawei/devices/a/a$j;
    .locals 1

    sget-object v0, Lcom/huawei/devices/a/a$j;->e:[Lcom/huawei/devices/a/a$j;

    invoke-virtual {v0}, [Lcom/huawei/devices/a/a$j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/devices/a/a$j;

    return-object v0
.end method
