.class public Lcom/tencent/tme/live/s/a$b;
.super Lcom/tencent/tme/live/n/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tme/live/s/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tme/live/n/j$c<",
        "Lcom/tencent/tme/live/n/b;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/tencent/tme/live/n/b;

.field public b:Lcom/tencent/tme/live/n/k;

.field public c:Lcom/tencent/tme/live/r/a$b;

.field public d:J

.field public final synthetic e:Lcom/tencent/tme/live/s/a;


# direct methods
.method public constructor <init>(Lcom/tencent/tme/live/s/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tme/live/s/a$b;->e:Lcom/tencent/tme/live/s/a;

    invoke-direct {p0}, Lcom/tencent/tme/live/n/j$c;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/tme/live/s/a;Lcom/tencent/tme/live/s/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tme/live/s/a$b;-><init>(Lcom/tencent/tme/live/s/a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    check-cast v8, Lcom/tencent/tme/live/n/b;

    .line 1
    iput-object v8, v0, Lcom/tencent/tme/live/s/a$b;->a:Lcom/tencent/tme/live/n/b;

    invoke-virtual {v8}, Lcom/tencent/tme/live/n/b;->l()Z

    move-result v1

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/tencent/tme/live/s/a$b;->b:Lcom/tencent/tme/live/n/k;

    check-cast v1, Lcom/tencent/tme/live/o/a;

    .line 2
    iget-object v1, v1, Lcom/tencent/tme/live/o/a;->d:Lcom/tencent/tme/live/o/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v8}, Lcom/tencent/tme/live/o/b;->a(Lcom/tencent/tme/live/n/b;)V

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/tencent/tme/live/s/a$b;->c:Lcom/tencent/tme/live/r/a$b;

    iget-boolean v1, v1, Lcom/tencent/tme/live/r/a$b;->a:Z

    if-eqz v1, :cond_24

    const/4 v9, 0x2

    goto/16 :goto_d

    :cond_1
    iget-object v1, v0, Lcom/tencent/tme/live/s/a$b;->c:Lcom/tencent/tme/live/r/a$b;

    iget-boolean v1, v1, Lcom/tencent/tme/live/r/a$b;->a:Z

    if-nez v1, :cond_4

    .line 4
    iget-object v1, v8, Lcom/tencent/tme/live/n/b;->C:Lcom/tencent/tme/live/n/h;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_3

    iget v1, v1, Lcom/tencent/tme/live/n/h;->e:I

    iget v4, v8, Lcom/tencent/tme/live/n/b;->u:I

    if-eq v1, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v4, v8, Lcom/tencent/tme/live/n/b;->b:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    goto/16 :goto_c

    :cond_3
    :goto_0
    iput-wide v2, v8, Lcom/tencent/tme/live/n/b;->b:J

    .line 5
    :cond_4
    invoke-virtual {v8}, Lcom/tencent/tme/live/n/b;->g()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/tencent/tme/live/s/a$b;->e:Lcom/tencent/tme/live/s/a;

    .line 6
    iget-object v7, v1, Lcom/tencent/tme/live/s/a;->b:Lcom/tencent/tme/live/o/d;

    .line 7
    iget-object v1, v7, Lcom/tencent/tme/live/o/d;->j:Lcom/tencent/tme/live/m/f;

    iget-object v2, v0, Lcom/tencent/tme/live/s/a$b;->c:Lcom/tencent/tme/live/r/a$b;

    iget v3, v2, Lcom/tencent/tme/live/r/a$b;->c:I

    iget v4, v2, Lcom/tencent/tme/live/r/a$b;->d:I

    iget-object v5, v2, Lcom/tencent/tme/live/r/a$b;->b:Lcom/tencent/tme/live/n/d;

    const/4 v6, 0x0

    move-object v2, v8

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/tme/live/m/f;->a(Lcom/tencent/tme/live/n/b;IILcom/tencent/tme/live/n/d;ZLcom/tencent/tme/live/o/d;)V

    :cond_5
    invoke-virtual {v8}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/tencent/tme/live/s/a$b;->d:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_24

    iget-byte v1, v8, Lcom/tencent/tme/live/n/b;->l:B

    if-nez v1, :cond_6

    invoke-virtual {v8}, Lcom/tencent/tme/live/n/b;->h()Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_c

    .line 8
    :cond_6
    iget-object v1, v8, Lcom/tencent/tme/live/n/b;->y:Lcom/tencent/tme/live/n/d;

    const/4 v7, 0x1

    if-eqz v1, :cond_21

    iget-wide v1, v1, Lcom/tencent/tme/live/n/d;->a:J

    invoke-virtual {v8}, Lcom/tencent/tme/live/n/b;->a()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_7

    goto/16 :goto_b

    .line 16
    :cond_7
    invoke-virtual {v8}, Lcom/tencent/tme/live/n/b;->f()I

    move-result v1

    if-ne v1, v7, :cond_8

    iget-object v1, v0, Lcom/tencent/tme/live/s/a$b;->c:Lcom/tencent/tme/live/r/a$b;

    iget v2, v1, Lcom/tencent/tme/live/r/a$b;->c:I

    add-int/2addr v2, v7

    iput v2, v1, Lcom/tencent/tme/live/r/a$b;->c:I

    :cond_8
    invoke-virtual {v8}, Lcom/tencent/tme/live/n/b;->i()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/tencent/tme/live/s/a$b;->b:Lcom/tencent/tme/live/n/k;

    invoke-virtual {v8, v1, v9}, Lcom/tencent/tme/live/n/b;->a(Lcom/tencent/tme/live/n/k;Z)V

    .line 17
    :cond_9
    iget v1, v8, Lcom/tencent/tme/live/n/b;->v:I

    iget-object v2, v8, Lcom/tencent/tme/live/n/b;->C:Lcom/tencent/tme/live/n/h;

    iget v2, v2, Lcom/tencent/tme/live/n/h;->f:I

    if-ne v1, v2, :cond_a

    goto :goto_1

    .line 18
    :cond_a
    iget-object v1, v0, Lcom/tencent/tme/live/s/a$b;->b:Lcom/tencent/tme/live/n/k;

    .line 19
    check-cast v1, Lcom/tencent/tme/live/o/a;

    .line 20
    iget-object v1, v1, Lcom/tencent/tme/live/o/a;->d:Lcom/tencent/tme/live/o/b;

    .line 21
    iput v2, v8, Lcom/tencent/tme/live/n/b;->v:I

    .line 22
    :goto_1
    iget-object v1, v0, Lcom/tencent/tme/live/s/a$b;->e:Lcom/tencent/tme/live/s/a;

    .line 23
    iget-object v2, v1, Lcom/tencent/tme/live/s/a;->e:Lcom/tencent/tme/live/s/b;

    .line 24
    iget-object v3, v0, Lcom/tencent/tme/live/s/a$b;->b:Lcom/tencent/tme/live/n/k;

    .line 25
    iget-object v1, v1, Lcom/tencent/tme/live/s/a;->c:Lcom/tencent/tme/live/s/b$g;

    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-virtual {v8}, Lcom/tencent/tme/live/n/b;->f()I

    move-result v4

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x7

    if-eq v4, v7, :cond_f

    if-eq v4, v13, :cond_e

    if-eq v4, v12, :cond_d

    if-eq v4, v11, :cond_c

    if-eq v4, v14, :cond_b

    goto :goto_3

    :cond_b
    const/4 v1, 0x0

    invoke-virtual {v8, v3, v1, v1}, Lcom/tencent/tme/live/n/b;->a(Lcom/tencent/tme/live/n/k;FF)V

    goto :goto_3

    :cond_c
    iget-object v2, v2, Lcom/tencent/tme/live/s/b;->b:Lcom/tencent/tme/live/s/b$e;

    goto :goto_2

    :cond_d
    iget-object v2, v2, Lcom/tencent/tme/live/s/b;->c:Lcom/tencent/tme/live/s/b$e;

    goto :goto_2

    :cond_e
    iget-object v2, v2, Lcom/tencent/tme/live/s/b;->d:Lcom/tencent/tme/live/s/b$e;

    goto :goto_2

    :cond_f
    iget-object v2, v2, Lcom/tencent/tme/live/s/b;->a:Lcom/tencent/tme/live/s/b$e;

    :goto_2
    invoke-interface {v2, v8, v3, v1}, Lcom/tencent/tme/live/s/b$e;->a(Lcom/tencent/tme/live/n/b;Lcom/tencent/tme/live/n/k;Lcom/tencent/tme/live/s/b$g;)V

    .line 28
    :goto_3
    invoke-virtual {v8}, Lcom/tencent/tme/live/n/b;->k()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, v8, Lcom/tencent/tme/live/n/b;->d:[Ljava/lang/String;

    if-nez v1, :cond_10

    invoke-virtual {v8}, Lcom/tencent/tme/live/n/b;->b()F

    move-result v1

    iget-object v2, v0, Lcom/tencent/tme/live/s/a$b;->b:Lcom/tencent/tme/live/n/k;

    check-cast v2, Lcom/tencent/tme/live/o/a;

    .line 29
    iget v2, v2, Lcom/tencent/tme/live/o/a;->g:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_10

    goto/16 :goto_c

    .line 30
    :cond_10
    iget-object v1, v0, Lcom/tencent/tme/live/s/a$b;->b:Lcom/tencent/tme/live/n/k;

    .line 31
    check-cast v1, Lcom/tencent/tme/live/o/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-virtual {v8}, Lcom/tencent/tme/live/n/b;->e()F

    move-result v5

    invoke-virtual {v8}, Lcom/tencent/tme/live/n/b;->c()F

    move-result v4

    iget-object v2, v1, Lcom/tencent/tme/live/o/a;->e:Landroid/graphics/Canvas;

    if-eqz v2, :cond_18

    invoke-virtual {v8}, Lcom/tencent/tme/live/n/b;->f()I

    move-result v2

    const/16 v3, 0xff

    if-ne v2, v14, :cond_12

    .line 33
    iget v2, v8, Lcom/tencent/tme/live/n/b;->z:I

    if-nez v2, :cond_11

    goto :goto_7

    :cond_11
    if-eq v2, v3, :cond_12

    .line 34
    iget-object v6, v1, Lcom/tencent/tme/live/o/a;->c:Lcom/tencent/tme/live/o/a$a;

    .line 35
    iget-object v6, v6, Lcom/tencent/tme/live/o/a$a;->e:Landroid/graphics/Paint;

    .line 36
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_4

    :cond_12
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_13

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    if-nez v2, :cond_13

    goto :goto_7

    :cond_13
    iget-object v2, v1, Lcom/tencent/tme/live/o/a;->d:Lcom/tencent/tme/live/o/b;

    iget-object v15, v1, Lcom/tencent/tme/live/o/a;->e:Landroid/graphics/Canvas;

    iget-object v9, v1, Lcom/tencent/tme/live/o/a;->c:Lcom/tencent/tme/live/o/a$a;

    iget-object v9, v9, Lcom/tencent/tme/live/o/a$a;->c:Landroid/text/TextPaint;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    iget-object v2, v8, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    if-eqz v2, :cond_14

    .line 38
    invoke-virtual {v2}, Lcom/tencent/tme/live/o/g;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tme/live/o/h;

    if-eqz v2, :cond_14

    invoke-virtual {v2, v15, v4, v5, v6}, Lcom/tencent/tme/live/o/h;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)Z

    move-result v2

    goto :goto_5

    :cond_14
    const/4 v2, 0x0

    :goto_5
    if-nez v2, :cond_17

    if-eqz v6, :cond_15

    .line 39
    iget-object v2, v1, Lcom/tencent/tme/live/o/a;->c:Lcom/tencent/tme/live/o/a$a;

    iget-object v2, v2, Lcom/tencent/tme/live/o/a$a;->c:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v2, v1, Lcom/tencent/tme/live/o/a;->c:Lcom/tencent/tme/live/o/a$a;

    iget-object v2, v2, Lcom/tencent/tme/live/o/a$a;->d:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_6

    :cond_15
    iget-object v2, v1, Lcom/tencent/tme/live/o/a;->c:Lcom/tencent/tme/live/o/a$a;

    iget-object v2, v2, Lcom/tencent/tme/live/o/a$a;->c:Landroid/text/TextPaint;

    .line 40
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    if-eq v6, v3, :cond_16

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 41
    :cond_16
    :goto_6
    iget-object v3, v1, Lcom/tencent/tme/live/o/a;->e:Landroid/graphics/Canvas;

    const/4 v6, 0x0

    move-object v2, v8

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/tme/live/o/a;->a(Lcom/tencent/tme/live/n/b;Landroid/graphics/Canvas;FFZ)V

    const/4 v1, 0x2

    goto :goto_8

    :cond_17
    const/4 v1, 0x1

    goto :goto_8

    :cond_18
    :goto_7
    const/4 v1, 0x0

    :goto_8
    const-wide/16 v2, 0x1

    if-ne v1, v7, :cond_19

    .line 42
    iget-object v1, v0, Lcom/tencent/tme/live/s/a$b;->c:Lcom/tencent/tme/live/r/a$b;

    iget-wide v4, v1, Lcom/tencent/tme/live/r/a$b;->r:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/tencent/tme/live/r/a$b;->r:J

    goto :goto_9

    :cond_19
    if-ne v1, v10, :cond_1a

    iget-object v1, v0, Lcom/tencent/tme/live/s/a$b;->c:Lcom/tencent/tme/live/r/a$b;

    iget-wide v4, v1, Lcom/tencent/tme/live/r/a$b;->s:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/tencent/tme/live/r/a$b;->s:J

    iget-object v1, v0, Lcom/tencent/tme/live/s/a$b;->e:Lcom/tencent/tme/live/s/a;

    .line 43
    iget-object v1, v1, Lcom/tencent/tme/live/s/a;->f:Lcom/tencent/tme/live/n/i;

    if-eqz v1, :cond_1a

    .line 44
    check-cast v1, Lcom/tencent/tme/live/m/a$b;

    .line 45
    iget-object v1, v1, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    if-eqz v1, :cond_1a

    invoke-virtual {v1, v10, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 46
    :cond_1a
    :goto_9
    iget-object v1, v0, Lcom/tencent/tme/live/s/a$b;->c:Lcom/tencent/tme/live/r/a$b;

    invoke-virtual {v8}, Lcom/tencent/tme/live/n/b;->f()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v2, v7, :cond_1f

    if-eq v2, v13, :cond_1e

    if-eq v2, v12, :cond_1d

    if-eq v2, v11, :cond_1c

    if-eq v2, v14, :cond_1b

    goto :goto_a

    .line 47
    :cond_1b
    iget v2, v1, Lcom/tencent/tme/live/r/a$b;->j:I

    add-int/2addr v2, v7

    iput v2, v1, Lcom/tencent/tme/live/r/a$b;->j:I

    goto :goto_a

    :cond_1c
    iget v2, v1, Lcom/tencent/tme/live/r/a$b;->g:I

    add-int/2addr v2, v7

    iput v2, v1, Lcom/tencent/tme/live/r/a$b;->g:I

    goto :goto_a

    :cond_1d
    iget v2, v1, Lcom/tencent/tme/live/r/a$b;->h:I

    add-int/2addr v2, v7

    iput v2, v1, Lcom/tencent/tme/live/r/a$b;->h:I

    goto :goto_a

    :cond_1e
    iget v2, v1, Lcom/tencent/tme/live/r/a$b;->i:I

    add-int/2addr v2, v7

    iput v2, v1, Lcom/tencent/tme/live/r/a$b;->i:I

    goto :goto_a

    :cond_1f
    iget v2, v1, Lcom/tencent/tme/live/r/a$b;->f:I

    add-int/2addr v2, v7

    iput v2, v1, Lcom/tencent/tme/live/r/a$b;->f:I

    .line 48
    :goto_a
    iget-object v1, v0, Lcom/tencent/tme/live/s/a$b;->c:Lcom/tencent/tme/live/r/a$b;

    .line 49
    iget v2, v1, Lcom/tencent/tme/live/r/a$b;->k:I

    add-int/2addr v2, v7

    iput v2, v1, Lcom/tencent/tme/live/r/a$b;->k:I

    .line 50
    iget-boolean v2, v1, Lcom/tencent/tme/live/r/a$b;->u:Z

    if-nez v2, :cond_20

    iget-object v1, v1, Lcom/tencent/tme/live/r/a$b;->t:Lcom/tencent/tme/live/n/j;

    check-cast v1, Lcom/tencent/tme/live/o/f;

    invoke-virtual {v1, v8}, Lcom/tencent/tme/live/o/f;->a(Lcom/tencent/tme/live/n/b;)Z

    .line 51
    :cond_20
    iget-object v1, v0, Lcom/tencent/tme/live/s/a$b;->e:Lcom/tencent/tme/live/s/a;

    .line 52
    iget-object v2, v1, Lcom/tencent/tme/live/s/a;->g:Lcom/tencent/tme/live/r/a$a;

    if-eqz v2, :cond_24

    .line 53
    iget v3, v8, Lcom/tencent/tme/live/n/b;->F:I

    .line 54
    iget-object v1, v1, Lcom/tencent/tme/live/s/a;->b:Lcom/tencent/tme/live/o/d;

    .line 55
    iget-object v1, v1, Lcom/tencent/tme/live/o/d;->i:Lcom/tencent/tme/live/n/h;

    iget v1, v1, Lcom/tencent/tme/live/n/h;->d:I

    if-eq v3, v1, :cond_24

    iput v1, v8, Lcom/tencent/tme/live/n/b;->F:I

    check-cast v2, Lcom/tencent/tme/live/m/k$b;

    .line 56
    iget-object v1, v2, Lcom/tencent/tme/live/m/k$b;->a:Lcom/tencent/tme/live/m/k;

    iget-object v1, v1, Lcom/tencent/tme/live/m/k;->e:Lcom/tencent/tme/live/m/n$a;

    if-eqz v1, :cond_24

    check-cast v1, Lcom/tencent/tme/live/m/i;

    .line 57
    iget-object v1, v1, Lcom/tencent/tme/live/m/i;->b:Lcom/tencent/tme/live/m/h;

    .line 58
    iget-object v1, v1, Lcom/tencent/tme/live/m/h;->g:Lcom/tencent/tme/live/m/h$b;

    goto :goto_c

    .line 9
    :cond_21
    :goto_b
    iget-object v1, v8, Lcom/tencent/tme/live/n/b;->w:Lcom/tencent/tme/live/o/g;

    .line 10
    iget-object v2, v0, Lcom/tencent/tme/live/s/a$b;->e:Lcom/tencent/tme/live/s/a;

    .line 11
    iget-object v2, v2, Lcom/tencent/tme/live/s/a;->f:Lcom/tencent/tme/live/n/i;

    if-eqz v2, :cond_23

    if-eqz v1, :cond_22

    .line 12
    invoke-virtual {v1}, Lcom/tencent/tme/live/o/g;->c()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_23

    :cond_22
    iget-object v1, v0, Lcom/tencent/tme/live/s/a$b;->e:Lcom/tencent/tme/live/s/a;

    .line 13
    iget-object v1, v1, Lcom/tencent/tme/live/s/a;->f:Lcom/tencent/tme/live/n/i;

    .line 14
    check-cast v1, Lcom/tencent/tme/live/m/a$b;

    .line 15
    iget-object v1, v1, Lcom/tencent/tme/live/m/a$b;->g:Lcom/tencent/tme/live/m/a$b$a;

    if-eqz v1, :cond_23

    invoke-virtual {v1, v10, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_23
    const/4 v9, 0x1

    goto :goto_d

    :cond_24
    :goto_c
    const/4 v9, 0x0

    :goto_d
    return v9
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tme/live/s/a$b;->c:Lcom/tencent/tme/live/r/a$b;

    iget-object v1, p0, Lcom/tencent/tme/live/s/a$b;->a:Lcom/tencent/tme/live/n/b;

    iput-object v1, v0, Lcom/tencent/tme/live/r/a$b;->e:Lcom/tencent/tme/live/n/b;

    return-void
.end method
