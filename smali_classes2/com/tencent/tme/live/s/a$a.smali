.class public Lcom/tencent/tme/live/s/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tme/live/s/b$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/s/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tme/live/s/a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/s/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/s/a$a;->a:Lcom/tencent/tme/live/s/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tme/live/n/b;FIZ)Z
    .locals 15

    move-object/from16 v7, p1

    iget-byte v0, v7, Lcom/tencent/tme/live/n/b;->l:B

    const/4 v8, 0x0

    move-object v9, p0

    if-nez v0, :cond_1

    iget-object v0, v9, Lcom/tencent/tme/live/s/a$a;->a:Lcom/tencent/tme/live/s/a;

    .line 1
    iget-object v10, v0, Lcom/tencent/tme/live/s/a;->b:Lcom/tencent/tme/live/o/d;

    .line 2
    iget-object v1, v10, Lcom/tencent/tme/live/o/d;->j:Lcom/tencent/tme/live/m/f;

    .line 3
    iget-object v11, v0, Lcom/tencent/tme/live/s/a;->a:Lcom/tencent/tme/live/n/d;

    .line 4
    iget-object v12, v1, Lcom/tencent/tme/live/m/f;->e:[Lcom/tencent/tme/live/m/f$e;

    array-length v13, v12

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v13, :cond_1

    aget-object v0, v12, v14

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object v4, v11

    move/from16 v5, p4

    move-object v6, v10

    invoke-interface/range {v0 .. v6}, Lcom/tencent/tme/live/m/f$e;->a(Lcom/tencent/tme/live/n/b;IILcom/tencent/tme/live/n/d;ZLcom/tencent/tme/live/o/d;)Z

    move-result v0

    iget-object v1, v10, Lcom/tencent/tme/live/o/d;->i:Lcom/tencent/tme/live/n/h;

    iget v1, v1, Lcom/tencent/tme/live/n/h;->c:I

    iput v1, v7, Lcom/tencent/tme/live/n/b;->B:I

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v7, v8}, Lcom/tencent/tme/live/n/b;->a(Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    return v8
.end method
