.class public Lcom/tencent/tme/live/x2/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Lcom/tencent/tme/live/w2/c;[Ljava/lang/Object;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/tencent/tme/live/w2/c;->a:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "onPreDestroy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "onResume"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "onNewIntent"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "onStop"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "onBackPressed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_5
    const-string v1, "onRestoreInstanceState"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_6
    const-string v1, "onStart"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_7
    const-string v1, "onPause"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_8
    const-string v1, "onDestroy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_9
    const-string v1, "onSaveInstanceState"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_a
    const-string v1, "onActivityResult"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_b
    const-string v1, "onRestart"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_d

    .line 3
    :pswitch_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    :goto_1
    if-ge v4, p0, :cond_e

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/w2/b;

    .line 4
    invoke-virtual {p1}, Lcom/tencent/tme/live/w2/b;->f()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5
    :pswitch_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    :goto_2
    if-ge v4, p0, :cond_e

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/w2/b;

    .line 6
    invoke-virtual {p1}, Lcom/tencent/tme/live/w2/b;->g()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 7
    :pswitch_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_3
    if-ge p1, p0, :cond_e

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/w2/b;

    .line 8
    aget-object v2, p2, v4

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 9
    :pswitch_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    :goto_4
    if-ge v4, p0, :cond_e

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/w2/b;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 11
    :pswitch_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    :goto_5
    if-ge v4, p0, :cond_e

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/w2/b;

    .line 12
    invoke-virtual {p1}, Lcom/tencent/tme/live/w2/b;->c()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 13
    :pswitch_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_6
    if-ge p1, p0, :cond_e

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/w2/b;

    .line 14
    aget-object v2, p2, v4

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 15
    :pswitch_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    :goto_7
    if-ge v4, p0, :cond_e

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/w2/b;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 17
    :pswitch_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    :goto_8
    if-ge v4, p0, :cond_e

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/w2/b;

    .line 18
    invoke-virtual {p1}, Lcom/tencent/tme/live/w2/b;->e()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 19
    :pswitch_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    :goto_9
    const/4 p2, 0x0

    if-ge v4, p0, :cond_d

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/w2/b;

    .line 20
    invoke-virtual {v1}, Lcom/tencent/tme/live/w2/b;->d()V

    iput-object p2, v1, Lcom/tencent/tme/live/w2/b;->b:Landroid/app/Activity;

    iput-object p2, v1, Lcom/tencent/tme/live/w2/b;->a:Landroid/view/View;

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 21
    :cond_d
    iget-object p0, p1, Lcom/tencent/tme/live/w2/c;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    iput-object p2, p1, Lcom/tencent/tme/live/w2/c;->a:Ljava/util/List;

    iput-object p2, p1, Lcom/tencent/tme/live/w2/c;->b:Landroid/app/Activity;

    goto :goto_d

    .line 22
    :pswitch_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_a
    if-ge p1, p0, :cond_e

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/w2/b;

    .line 23
    aget-object v2, p2, v4

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 24
    :pswitch_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_b
    if-ge p1, p0, :cond_e

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tme/live/w2/b;

    .line 25
    aget-object v5, p2, v4

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    aget-object v5, p2, v3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    aget-object v5, p2, v2

    check-cast v5, Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 26
    :pswitch_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    :goto_c
    if-ge v4, p0, :cond_e

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/tme/live/w2/b;

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_e
    :goto_d
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6eef60d0 -> :sswitch_b
        -0x62b87835 -> :sswitch_a
        -0x58e5dda0 -> :sswitch_9
        -0x53865ee5 -> :sswitch_8
        -0x4fe204a9 -> :sswitch_7
        -0x4faf663d -> :sswitch_6
        -0x46b61a73 -> :sswitch_5
        -0x423c3a24 -> :sswitch_4
        -0x3c607d7f -> :sswitch_3
        -0x36bbaec3 -> :sswitch_2
        0x57429eec -> :sswitch_1
        0x699b3716 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
