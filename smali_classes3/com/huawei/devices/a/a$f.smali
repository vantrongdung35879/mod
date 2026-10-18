.class public final enum Lcom/huawei/devices/a/a$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/devices/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/devices/a/a$f;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/devices/a/a$f;

.field public static final enum b:Lcom/huawei/devices/a/a$f;

.field public static final enum c:Lcom/huawei/devices/a/a$f;

.field public static final enum d:Lcom/huawei/devices/a/a$f;

.field public static final enum e:Lcom/huawei/devices/a/a$f;

.field public static final enum f:Lcom/huawei/devices/a/a$f;

.field private static final synthetic h:[Lcom/huawei/devices/a/a$f;


# instance fields
.field private final g:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/huawei/devices/a/a$f;

    const-string v1, "haptic.control.search_long_press"

    const-string v2, "SEARCH_LONG_PRESS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/huawei/devices/a/a$f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/huawei/devices/a/a$f;->a:Lcom/huawei/devices/a/a$f;

    new-instance v1, Lcom/huawei/devices/a/a$f;

    const-string v2, "haptic.control.text_edit"

    const-string v4, "TEXT_EDIT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/huawei/devices/a/a$f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/huawei/devices/a/a$f;->b:Lcom/huawei/devices/a/a$f;

    new-instance v2, Lcom/huawei/devices/a/a$f;

    const-string v4, "haptic.control.text_choose_cursor_move"

    const-string v6, "TEXT_CHOSE_CURSOR_MOVE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/huawei/devices/a/a$f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/huawei/devices/a/a$f;->c:Lcom/huawei/devices/a/a$f;

    new-instance v4, Lcom/huawei/devices/a/a$f;

    const-string v6, "haptic.control.widget_operation"

    const-string v8, "WIDGET_OPERATION"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/huawei/devices/a/a$f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/huawei/devices/a/a$f;->d:Lcom/huawei/devices/a/a$f;

    new-instance v6, Lcom/huawei/devices/a/a$f;

    const-string v8, "haptic.control.time_scroll"

    const-string v10, "TIME_SCROLL"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/huawei/devices/a/a$f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/huawei/devices/a/a$f;->e:Lcom/huawei/devices/a/a$f;

    new-instance v8, Lcom/huawei/devices/a/a$f;

    const-string v10, "haptic.control.letters_scroll"

    const-string v12, "LETTERS_SCROLL"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/huawei/devices/a/a$f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/huawei/devices/a/a$f;->f:Lcom/huawei/devices/a/a$f;

    const/4 v10, 0x6

    new-array v10, v10, [Lcom/huawei/devices/a/a$f;

    aput-object v0, v10, v3

    aput-object v1, v10, v5

    aput-object v2, v10, v7

    aput-object v4, v10, v9

    aput-object v6, v10, v11

    aput-object v8, v10, v13

    sput-object v10, Lcom/huawei/devices/a/a$f;->h:[Lcom/huawei/devices/a/a$f;

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

    iput-object p3, p0, Lcom/huawei/devices/a/a$f;->g:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/devices/a/a$f;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/devices/a/a$f;
    .locals 1

    const-class v0, Lcom/huawei/devices/a/a$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/devices/a/a$f;

    return-object p0
.end method

.method public static values()[Lcom/huawei/devices/a/a$f;
    .locals 1

    sget-object v0, Lcom/huawei/devices/a/a$f;->h:[Lcom/huawei/devices/a/a$f;

    invoke-virtual {v0}, [Lcom/huawei/devices/a/a$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/devices/a/a$f;

    return-object v0
.end method
