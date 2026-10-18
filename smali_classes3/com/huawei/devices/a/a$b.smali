.class public final enum Lcom/huawei/devices/a/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/devices/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/devices/a/a$b;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/devices/a/a$b;

.field public static final enum b:Lcom/huawei/devices/a/a$b;

.field private static final synthetic d:[Lcom/huawei/devices/a/a$b;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/huawei/devices/a/a$b;

    const-string v1, "haptic.calculator.delete_long_press"

    const-string v2, "DELETE_LONG_PRESS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/huawei/devices/a/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/devices/a/a$b;->a:Lcom/huawei/devices/a/a$b;

    new-instance v1, Lcom/huawei/devices/a/a$b;

    const-string v2, "haptic.virtual_float_tasks.long_press"

    const-string v4, "VITUAL_TASK"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/huawei/devices/a/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/huawei/devices/a/a$b;->b:Lcom/huawei/devices/a/a$b;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/huawei/devices/a/a$b;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    sput-object v2, Lcom/huawei/devices/a/a$b;->d:[Lcom/huawei/devices/a/a$b;

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

    iput-object p3, p0, Lcom/huawei/devices/a/a$b;->c:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/devices/a/a$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/devices/a/a$b;
    .locals 1

    const-class v0, Lcom/huawei/devices/a/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/devices/a/a$b;

    return-object p0
.end method

.method public static values()[Lcom/huawei/devices/a/a$b;
    .locals 1

    sget-object v0, Lcom/huawei/devices/a/a$b;->d:[Lcom/huawei/devices/a/a$b;

    invoke-virtual {v0}, [Lcom/huawei/devices/a/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/devices/a/a$b;

    return-object v0
.end method
